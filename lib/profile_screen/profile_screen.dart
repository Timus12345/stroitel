import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroitel/themes/themes.dart';

class profile_screen extends StatelessWidget {
  const profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20), // Скругления углов
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26, // Цвет тени
                    blurRadius: 8, // Размытие тени
                    offset: Offset(0, 4), // Смещение тени
                  ),
                ],
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/face.png'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Дмитрий Комарницкий',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'id 847122',
                        style: TextStyle(color: Colors.grey),
                      ),
                      IconButton(
                        icon: const Icon(Icons.copy, size: 16, color: Colors.grey),
                        onPressed: () {
                          Clipboard.setData(const ClipboardData(text: '847122'));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          _buildMenuItem(
            'assets/notifications.png',
            'Уведомления',
            context,
            '/notify',
          ),
          Container(height: 1, color: Colors.orange, margin: const EdgeInsets.symmetric(horizontal: 16)),
          _buildMenuItem(
            'assets/settings.png',
            'Настроить профиль',
            context,
            '/settings',
          ),
          _buildMenuItem(
            'assets/history.png',
            'История покупок',
            context,
            '/history',
          ),
          _buildMenuItem(
            'assets/location.png',
            'Адрес',
            context,
            '/address',
          ),
          Container(height: 1, color: Colors.orange, margin: const EdgeInsets.symmetric(horizontal: 16)),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 350),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Text(
                'Выйти',
                style: TextStyle(color: Colors.orange, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String iconPath, String title, BuildContext context, String route) {
    return ListTile(
      leading: Image.asset(iconPath, width: 24, height: 24, color: Colors.orange),
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
