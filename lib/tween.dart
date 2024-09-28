import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation>
 {
  bool _isLarge =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TWEEN ANIMATION"),
      centerTitle: true,
      ),
      body: Center(
        child: TweenAnimationBuilder(tween: Tween<double>(
          begin: 100,
          end: _isLarge ? 200:100
        ), duration: Duration(seconds: 1), builder: (context, size, child){
          return Container(
           width: size,
           height: size,
           color: Colors.green,
           child: child,
        
          );
        },
        child: Center(child: Text("TWEEN")),
        
        ),
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState((){
          _isLarge= !_isLarge;
        });
      },
      child: Icon(Icons.play_arrow),
      ),
    );
  }
}