import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isLogin = false;

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
                begin: Alignment.topRight,
                colors: [
                  Colors.black87.withOpacity(0.7),
                  Colors.black87.withOpacity(0.6),
                  Colors.black87.withOpacity(0.5),
                  Colors.black87.withOpacity(0.3),
                ]
            ),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text('Find the best parties near you.',style: TextStyle(color: Colors.yellow[400], fontSize: 32, fontWeight: FontWeight.w300, height: 1.1),
              ),
              const SizedBox(height: 30),
               Text('Let us find you a party for your interest',style: TextStyle(color: Colors.teal[200], fontSize: 20, fontWeight: FontWeight.w400, height: 1.2),
              ),
              const SizedBox(height: 450),
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
              )  :
                  Row(
                    children: [
                      Expanded(child:Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red
                        ),
                        height: 50,
                        width: double.infinity,
                        child: const Text('Google', style: TextStyle(color: Colors.white),),
                      ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(child:Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue
                        ),
                        height: 50,
                        width: double.infinity,
                        child: const Text('Facebook', style: TextStyle(color: Colors.white),),
                      ), )

                    ],
                  ),
              const SizedBox(height: 10)
            ].animate(interval: 200.ms).slide(begin: const Offset(0,-0.5),duration: 400.ms).fade(duration: 500.ms),
          ),
        ),
      ),
    );
  }
}
