import 'package:flutter/material.dart';

class AnimationExample extends StatefulWidget {
  const AnimationExample({super.key});

  @override
  State<AnimationExample> createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> {
  double _width= 100;
  double _height = 100;
  Color _color = Colors.purple;

  void _animatedC(){
    setState(() {
      _width = _width == 100? 200 : 100;
      _height = _height == 100? 200 :100;
      _color = _color == Colors.purple? Colors.blue :Colors.purple;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Example"),

      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          color: _color,
          duration:Duration(seconds: 2),
          curve: Curves.easeOutQuint,
          child: GestureDetector(
            onTap: _animatedC,
            child: FlutterLogo(),
          ),),
      
          
      ),
      
    );
  }
}