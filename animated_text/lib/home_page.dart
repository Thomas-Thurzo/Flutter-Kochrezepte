import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextStyle _textStyle1 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Animated Text Kit')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Type Writer Animated Text',
                  textStyle: _textStyle1,
                ),
              ],
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText(
                  'Type Writer Animated Text',
                  textStyle: _textStyle1,
                ),
              ],
            ),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Wavy Animated Text', textStyle: _textStyle1),
              ],
            ),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'Typer Animated Text',
                  textStyle: _textStyle1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
