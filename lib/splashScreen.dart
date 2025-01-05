// import 'dart:async';
// import 'package:badc_app/loginScreen.dart';
// import 'package:badc_app/style.dart';
// import 'package:flutter/material.dart';
//
// class splashScreen extends StatefulWidget {
//   const splashScreen({super.key});
//
//   @override
//   State<splashScreen> createState() => _splashScreenState();
// }
//
// class _splashScreenState extends State<splashScreen> {
//   late AnimationController _controller;
//
//    late Animation<double> _animation;
//   @override
//   void initState() {
//     _controller = AnimationController(
//
//       duration: Duration(seconds: 2), vsync: null,
//     );
//     super.initState();
//     Timer(
//       const Duration(seconds: 20),
//       () {
//         Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const LoginScreen(),
//           ),
//           (route) => false,
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const Spacer(),
//
//           AnimatedBuilder(
//             animation: _animation,
//
//             builder: (context, child) {
//               return Transform.scale(
//                 scale: _animation.value,
//                 child: Image.asset(
//                   "assets/logo.png",
//                 ), // Replace with your logo
//               );
//             },
//           ),
//
//           // Center(
//           //   child: Image.asset(
//           //     "assets/logo.png",
//           //     height: 160,
//           //     width: 160,
//           //     fit: BoxFit.fill,
//           //   ),
//           // ),
//           const Spacer(),
//           SizedBox(
//             width: 100,
//             child: LinearProgressIndicator(
//               minHeight: 3,
//               backgroundColor: Colors.grey[300],
//               valueColor: const AlwaysStoppedAnimation(colorDeepGreen),
//             ),
//           ),
//           // const Spacer(),
//           // const Text(
//           //   "badc.com",
//           //   style: TextStyle(
//           //       color: primaryGreen,
//           //       fontSize: 22,
//           //       fontWeight: FontWeight.w500,
//           //       letterSpacing: 0.6),
//           // ),
//           const SizedBox(
//             height: 70,
//           )
//         ],
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:badc_app/loginScreen.dart';
import 'package:badc_app/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    // Define the animation
    _animation = Tween<double>(begin: 0.5, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );

    // Start the animation
    _controller.forward();

    // Navigate to LoginScreen after a delay
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
          (route) => false,
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),

          // Animated logo
          Center(
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _animation.value,
                  child: Image.asset(
                    "assets/logo.png",
                    height: 180,
                    width: 180,
                  ), // Replace with your logo
                );
              },
            ),
          ),

          const Spacer(),

          SizedBox(
            width: 100,
            child: LinearProgressIndicator(
              minHeight: 3,
              backgroundColor: Colors.grey[300],
              valueColor: const AlwaysStoppedAnimation(colorDeepGreen),
            ),
          ),

          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
