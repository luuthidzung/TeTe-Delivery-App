import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:tete_shop/pages/login_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void _navigateToNextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
// Logo
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Image.asset('lib/image/tetelogo.jpg'),
                ),
              ),

// Animation
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Lottie.network(
                    'https://lottie.host/01527810-56bf-4d93-88db-9a89224410c3/LAquJHN2y0.json',
                  ),
                ),
              ),
            ],
          ),

// Next Button at Bottom Right Corner
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: FloatingActionButton(
                onPressed: () => _navigateToNextPage(context),
                child: Icon(Icons.arrow_forward),
                backgroundColor: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Next page placeholder
