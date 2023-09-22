
// SlideTransitionWidget---> StateFul class
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class SlideTransitionWidget extends StatefulWidget {
  const SlideTransitionWidget({super.key});

  @override
  State<SlideTransitionWidget> createState() => _SlideTransitionWidgetState();
}

// uses the SingleTikerProvider Mixin
class _SlideTransitionWidgetState extends State<SlideTransitionWidget>
    with SingleTickerProviderStateMixin {
// defining the Animation Controller
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
// defining the Offset of the animation
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, -1.5),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));
  @override
  void initState() {
    Future.delayed(Duration(seconds:3), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => WheelExample(),), (route) => false);
     // Navigator.push(context, MaterialPageRoute(builder: (context) => WheelExample(),));
// code to be executed after 2 seconds
    });

    // TODO: implement initState
    super.initState();
  }
// After using disposing the controller
// is must to releasing the resourses
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold Widget
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: SlideTransition(
                // the offset which we define above![](../../../../../Downloads/pngwing.com.png)
                position: _offsetAnimation,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  // Loading the GeeksForGeeks logo
                  child: Image.asset(
                      'assets/images/rocket.png',height: 350,width: 350,),
                ),
              )),
          AnimatedTextKit(
            animatedTexts: [

              ScaleAnimatedText(
                scalingFactor: 0.5,
                'SpaceBit',
                duration: Duration(seconds: 3),
                textStyle:
                const TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold, fontSize: 50.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
