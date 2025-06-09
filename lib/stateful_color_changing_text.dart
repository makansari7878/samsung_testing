import 'package:flutter/material.dart';

class StatefulColorChangingText extends StatefulWidget {
  final String text;
  final Color initialTextColor; // Now takes an initial color for the text

  const StatefulColorChangingText({
    Key? key,
    required this.text,
    required this.initialTextColor,
  }) : super(key: key);

  @override
  State<StatefulColorChangingText> createState() => _StatefulColorChangingTextState();
}

class _StatefulColorChangingTextState extends State<StatefulColorChangingText> {
  late Color _currentTextColor;

  @override
  void initState() {
    super.initState();
    _currentTextColor = widget.initialTextColor;
  }

  void _toggleTextColor() {
    setState(() {
      _currentTextColor = _currentTextColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      color: Colors.grey[200],
      alignment: Alignment.center,
      child: Text(
        widget.text,
        style: TextStyle(
          color: _currentTextColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}