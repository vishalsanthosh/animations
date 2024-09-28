import 'package:flutter/material.dart';

class ScaleTransExp extends StatefulWidget {
  const ScaleTransExp({super.key});

  @override
  State<ScaleTransExp> createState() => _ScaleTransExpState();
}

class _ScaleTransExpState extends State<ScaleTransExp>
with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;


 
  @override
  void initState(){
   super.initState();
   _controller =AnimationController(vsync: this,duration: Duration(seconds: 5));
   _animation =Tween<double>(
    begin: 2.0,
    end: 1.0,
   ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
   _controller.forward();


  }
  @override
  void dispose(){
    _controller.dispose(
    );
    super.dispose();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scale"),
      ),
      body: Center(
        child: ScaleTransition(scale: _animation,
        child: Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        child: Center(child: Text("Scale me")),
        ),),
      ),
      
      
    );
  }
}