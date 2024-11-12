import 'package:flutter/material.dart';

class SportResumeScreen extends StatefulWidget {
  const SportResumeScreen({super.key});

  @override
  State<SportResumeScreen> createState() => _SportResumeScreenState();
}

class _SportResumeScreenState extends State<SportResumeScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              buildPage(
                imagePath: 'assets/image 2-2.png',
                description:
                    'Стать бойцом, и выйти на ринг стало намного легче',
              ),
              buildPage(
                imagePath: 'assets/image 2-3.png',
                description:
                    'Веди свою страницу и получи приглашение от промоушена',
              ),
              buildPage(
                imagePath: 'assets/image 2-4.png',
                description:
                    'Получи контракт от официального агента и выходи на бои',
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.9),
                    spreadRadius: 10,
                    blurRadius: 20,
                    offset: const Offset(0, -50),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Стать бойцом, и выйти на ринг стало намного легче',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 60),
                    ),
                    child: const Text(
                      'Войти',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 50,
                      ),
                    ),
                    child: const Text('Регистрация',
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Забыли пароль?',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPage({required String imagePath, required String description}) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Colors.black.withOpacity(0.9), Colors.transparent],
            ),
          ),
        ),
        Positioned(
          top: 80,
          left: 0,
          right: 0,
          child: Center(
            child: Image.asset(
              'assets/logo.png',
              width: 125, 
            ),
          ),
        ),
        // Positioned(
        //   bottom: 350, // Position the description text above the gradient
        //   left: 20,
        //   right: 20,
        //   child: Text(
        //     description,
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontSize: 18,
        //       fontWeight: FontWeight.w500,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
