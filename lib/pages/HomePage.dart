import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/im_party.jpeg'),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black87.withOpacity(0.6),
                  Colors.black87.withOpacity(0.5),
                  Colors.black87.withOpacity(0.4),
                  Colors.black87.withOpacity(0.3),
                ]
            ),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Find the best parties near you.',style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
              ).animate().slide(begin: const Offset(0,-0.5),duration: 500.ms).fade(duration: 500.ms),
              const SizedBox(height: 30),
              const Text('Let us find you a party for your interest',style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w100),
              ).animate().slide(delay: 200.ms,begin: const Offset(0,-0.5),duration: 200.ms).fade(delay: 300.ms,duration: 500.ms),
              const SizedBox(height: 70),
              _isLogin?
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.yellow[900]
                ),
                height: 50,
                width: double.infinity,
                child: const Text('Start', style: TextStyle(color: Colors.white),),
              ).animate().slide(delay: 400.ms,begin: const Offset(0,-0.5),duration: 400.ms).fade(delay: 500.ms,duration: 500.ms)  :
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red
                ),
                height: 50,
                width: double.infinity,
                child: const Text('Google+', style: TextStyle(color: Colors.white),),
              ).animate().slide(delay: 400.ms,begin: const Offset(0,-0.5),duration: 400.ms).fade(delay: 500.ms,duration: 500.ms),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
