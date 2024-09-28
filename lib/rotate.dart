import 'package:flutter/material.dart';

class RotationAnimation extends StatefulWidget {
  const RotationAnimation({super.key});

  @override
  State<RotationAnimation> createState() => _RotationAnimationState();
}

class _RotationAnimationState extends State<RotationAnimation>
with SingleTickerProviderStateMixin{
 AnimationController? _controller;
 Animation<double>? _animation;

  @override
  void initState(){
    super.initState();
    _controller =AnimationController(vsync: this,duration: Duration(seconds: 3))..repeat();
    _animation= Tween<double>(
      begin: 0.0,
      end: 1.0,).animate(_controller!);

  }
  @override
  void dispose(){
    super.dispose();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rotate"),),
      body:Center(
        child: RotationTransition(turns:_animation!,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          child: Center(child: Text("Rotate")),
        ),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if (_controller!.isAnimating){
          _controller!.stop();

        }else{
          _controller!.repeat();
        }
        
      },
      child: Icon(Icons.play_arrow),
      ),
    );
  }
}