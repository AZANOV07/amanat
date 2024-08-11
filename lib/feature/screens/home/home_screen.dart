import 'package:flutter/material.dart';
import 'package:news001/feature/widgets/circle_widgets.dart';
import '../../widgets/color_widgets.dart';
import '../../widgets/item_widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'a',
              style: TextStyle(
                  fontSize: 70, fontWeight: FontWeight.bold, color: color12),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'aманат кредит',
                  style: TextStyle(
                    fontSize: 30,
                    color: color13,
                    fontWeight: FontWeight.normal,
                  ),
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: color13,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Icon(Icons.add_alert, color: color14,),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CircleButton(Icons.image, 'Получи кредит легко'),
                  CircleButton(Icons.phone_android, 'Получи кредит легко'),
                  CircleButton(Icons.credit_card, 'Получи кредит легко'),
                  CircleButton(Icons.credit_card, 'Получи кредит легко'),
                  CircleButton(Icons.credit_card, 'Получи кредит легко'),
                  CircleButton(Icons.credit_card, 'Получи кредит легко'),
                  CircleButton(Icons.credit_card, 'Получи кредит легко'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Поле поиска
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Поиск',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Основное меню
            Expanded(
              child: ListView(
                children: [
                  MenuItem(
                    Icons.account_balance,
                    'Онлайн кредит',
                    color1,
                  ),
                  MenuItem(
                    Icons.calculate,
                    'Кредитный калькулятор',
                    color2,
                  ),
                  MenuItem(
                    Icons.attach_money,
                    'Текущие кредиты',
                    color3,
                  ),
                  MenuItem(
                    Icons.assignment,
                    'Заявление на кредит',
                    color4,
                  ),
                  MenuItem(
                    Icons.info,
                    'Информация',
                    color11,
                  ),
                  MenuItem(
                    Icons.description,
                    'Инструкция',
                    color8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: color13,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Главная',),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on, color: color7,),
              label: 'Локация',),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: color7),
              label: 'Настройки',),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: color7),
              label: 'Профиль',),
        ],
      ),
    );
  }
}
