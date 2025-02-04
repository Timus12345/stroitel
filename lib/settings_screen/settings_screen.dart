import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroitel/themes/themes.dart';

class settings_screen extends StatelessWidget {
  const settings_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/profile');
          },
          icon: Image.asset("orange_strelka.png"),
        ),
        title: Padding(
          padding: const EdgeInsets.only(),
          child: Text(
            "Вернуться в профиль",
            style: AppShrifts.interLight10.copyWith(color: AppColors.orange),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Заголовок
            Text(
              'Настроить профиль',
              style: AppShrifts.interRegular20.copyWith(color: AppColors.black),
            ),
            // Имя
            Container(
              padding: const EdgeInsets.only(),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(0), // прямые края
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '   Имя',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),

                  TextField(
                    controller: TextEditingController(text:'  Дмитрий Комарницкий'),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Введите имя',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Мобильный номер телефона
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(0), // прямые края
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Мобильный номер телефона',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    '+7-928-555-35-350',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Уведомления',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SwitchListTile(
                    value: true,
                    onChanged: (bool value) {},
                    activeColor: AppColors.orange,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
