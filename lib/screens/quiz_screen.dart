import 'package:flutter/material.dart';

import '../core/quiz.dart';
import '../data/planets.dart';
import '../l10n/names.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../widgets/common.dart';

/// Ten questions built from the planet data.
class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<QuizQuestion>? _questions;
  int _index = 0;
  int _score = 0;
  Planet? _picked;
  bool _finished = false;
  bool _newBest = false;

  void _start() {
    setState(() {
      _questions = buildQuiz();
      _index = 0;
      _score = 0;
      _picked = null;
      _finished = false;
      _newBest = false;
    });
  }

  void _pick(Planet planet) {
    if (_picked != null) {
      return;
    }
    final question = _questions![_index];
    setState(() {
      _picked = planet;
      if (planet.id == question.answer.id) {
        _score++;
      }
    });
  }

  Future<void> _next() async {
    final questions = _questions!;
    if (_index + 1 < questions.length) {
      setState(() {
        _index++;
        _picked = null;
      });
      return;
    }
    final best = await AppScope.read(context).recordQuizScore(_score);
    if (!mounted) {
      return;
    }
    setState(() {
      _finished = true;
      _newBest = best;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = _questions;
    if (questions == null) {
      return _intro(context);
    }
    if (_finished) {
      return _result(context, questions.length);
    }
    return _question(context, questions);
  }

  Widget _intro(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final best = AppScope.of(context).settings.bestQuizScore;
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: <Widget>[
        Text(l.quizTitle,
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: p.text)),
        const SizedBox(height: 40),
        const Center(child: HelioraLogo(size: 120)),
        const SizedBox(height: 32),
        Text(l.quizIntro,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: p.text, height: 1.4)),
        if (best > 0) ...<Widget>[
          const SizedBox(height: 12),
          Text(l.quizBest(best),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: p.muted)),
        ],
        const SizedBox(height: 28),
        FilledButton(
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
          onPressed: _start,
          child: Text(l.quizStart),
        ),
      ],
    );
  }

  Widget _question(BuildContext context, List<QuizQuestion> questions) {
    final l = context.l10n;
    final p = Palette.of(context);
    final question = questions[_index];
    final picked = _picked;
    final last = _index + 1 == questions.length;

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: <Widget>[
        Text(l.quizProgress(_index + 1, questions.length),
            style: TextStyle(fontSize: 13, color: p.muted)),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: LinearProgressIndicator(
            value: (_index + (picked != null ? 1 : 0)) / questions.length,
            minHeight: 6,
            color: p.accent,
            backgroundColor: p.surface,
          ),
        ),
        const SizedBox(height: 24),
        Text(quizQuestionText(l, question.kind),
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: p.text,
                height: 1.3)),
        const SizedBox(height: 20),
        for (final option in question.options) ...<Widget>[
          _OptionButton(
            planet: option,
            label: planetName(l, option),
            state: picked == null
                ? _OptionState.open
                : option.id == question.answer.id
                    ? _OptionState.right
                    : option.id == picked.id
                        ? _OptionState.wrong
                        : _OptionState.idle,
            onTap: () => _pick(option),
          ),
          const SizedBox(height: 10),
        ],
        if (picked != null) ...<Widget>[
          const SizedBox(height: 8),
          Text(
            picked.id == question.answer.id
                ? l.quizCorrect
                : l.quizWrong(planetName(l, question.answer)),
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: picked.id == question.answer.id ? p.good : p.bad,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            style:
                FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
            onPressed: _next,
            child: Text(last ? l.quizSeeResult : l.quizNext),
          ),
        ],
      ],
    );
  }

  Widget _result(BuildContext context, int total) {
    final l = context.l10n;
    final p = Palette.of(context);
    final best = AppScope.of(context).settings.bestQuizScore;
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: <Widget>[
        Text(l.quizTitle,
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: p.text)),
        const SizedBox(height: 48),
        Text(
          '$_score / $total',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 56, fontWeight: FontWeight.w700, color: p.accentText),
        ),
        const SizedBox(height: 8),
        Text(l.quizScore(_score, total),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: p.text)),
        const SizedBox(height: 8),
        Text(_newBest ? l.quizNewBest : l.quizBest(best),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14, color: _newBest ? p.good : p.muted)),
        const SizedBox(height: 32),
        FilledButton(
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
          onPressed: _start,
          child: Text(l.quizAgain),
        ),
      ],
    );
  }
}

enum _OptionState { open, idle, right, wrong }

class _OptionButton extends StatelessWidget {
  const _OptionButton({
    required this.planet,
    required this.label,
    required this.state,
    required this.onTap,
  });

  final Planet planet;
  final String label;
  final _OptionState state;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final p = Palette.of(context);
    final light = Theme.of(context).brightness == Brightness.light;
    var border = light ? p.border : Colors.transparent;
    IconData? icon;
    Color iconColor = p.text;
    switch (state) {
      case _OptionState.right:
        border = p.good;
        icon = Icons.check_circle;
        iconColor = p.good;
      case _OptionState.wrong:
        border = p.bad;
        icon = Icons.cancel;
        iconColor = p.bad;
      case _OptionState.open:
      case _OptionState.idle:
        break;
    }
    return Opacity(
      opacity: state == _OptionState.idle ? 0.6 : 1,
      child: Material(
        color: p.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: border, width: 1.5),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: state == _OptionState.open ? onTap : null,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 56),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: <Widget>[
                  PlanetBall(planet: planet, size: 26),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(label,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: p.text)),
                  ),
                  if (icon != null) Icon(icon, color: iconColor),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
