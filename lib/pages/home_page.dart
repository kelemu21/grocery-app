import 'package:flutter/material.dart';
import 'package:ggro/pages/hoome_page.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Center widget to center the content
        child: Column(
          children: [
            SizedBox(
              width: 300, // specify width if necessary
              height: 300, // specify height if necessary
              child: Image.asset('assets/into.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'we deliver groccery at your dropstep',
                style: GoogleFonts.notoSerif(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ), // Fixed unbalanced parenthesis here
            ),
            SizedBox(height: 25),
            Text('freshe item evrey day',style: TextStyle(color: Colors.greenAccent),),
            const Spacer(),

            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomePage();
                }),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white),
                  ),
                ),

              ),

            ),
             Spacer(),
          ],

        ),

      ),
    );
  }
}
