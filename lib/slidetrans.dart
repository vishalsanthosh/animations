import 'package:flutter/material.dart';

class SlideTransExp extends StatefulWidget {
  const SlideTransExp({super.key});

  @override
  State<SlideTransExp> createState() => _SlideTransExpState();
}

class _SlideTransExpState extends State<SlideTransExp>
with SingleTickerProviderStateMixin
 {
  AnimationController? _controller;
  Animation<Offset>? _animation;
  @override
  void initState(){
    super.initState();
    _controller = 
    AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset(0.0, 0.0),).animate(CurvedAnimation(parent: _controller!, curve: Curves.fastEaseInToSlowEaseOut));
      _controller!.forward();
  }
  @override
  void dispose(){
    _controller!.dispose();
    super.dispose();

  }
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Slide Transition"),
      ),
      body: Center(
        child: SlideTransition(position: _animation!,
        child: Container(
          height: 150,
          width: 150,
          color: Colors.blue,
          child: Center(child: Text("Slide Transition")),
        ),
        ),
      ),
      
    );
  }
}