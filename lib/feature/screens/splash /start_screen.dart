import 'package:flutter/material.dart';
import '../../widgets/color_widgets.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Задержка в 5 секунд перед переходом на следующий экран
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const MainPage()), // Замените на ваш следующий экран
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'a',
                  style: TextStyle(
                      fontSize: 100,
                      color: color12,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'аманат кредит',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                          color: color13),
                    ),
                    Text(
                      'микрокредитная компания',
                      style: TextStyle(
                        fontSize: 15,
                        color: color13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
            SizedBox(height: 250),
            Text(
              'Powered by ktoTo 2023',
              style: TextStyle(fontSize: 16, color: color10),
            ),
          ],
        ),
      ),
    );
  }
}
