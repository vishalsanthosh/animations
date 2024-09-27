import 'package:flutter/material.dart';

class FadeTraExp extends StatefulWidget {
  const FadeTraExp({super.key});

  @override
  State<FadeTraExp> createState() => _FadeTraExpState();
}

class _FadeTraExpState extends State<FadeTraExp>
with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  @override
  void initState(){
    super.initState();
    _controller=AnimationController(duration: Duration(seconds: 2),vsync: this);
    _animation= CurvedAnimation(parent: _controller!, curve: Curves.bounceOut);
    _controller!.forward();
  }
  @override
  void dispose(){
    _controller!.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fade Transition Example"),),
      body: Center(
        child: FadeTransition(opacity: _animation!,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Center(child: Text("Hello")),
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){
     if (_controller!.isCompleted){
      _controller!.reverse();

     }else {
      _controller!.forward();
     }
      }),
    );
  }
}