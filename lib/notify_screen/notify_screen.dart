import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroitel/themes/themes.dart';

class notify_screen extends StatelessWidget {
  const notify_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          // Это заменит Divider на полоску с направлением вверх
          const SizedBox(height: 20),
          // Уведомления без иконки и с увеличенным текстом
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(
              'Уведомления',
              style: AppShrifts.interRegular20.copyWith(color: AppColors.black),
            ),
          ),
          const SizedBox(height: 20),
          // Заказ 1
          _buildOrderItem('Заказ №73522 у курьера', 'На данном этапе происходит транспортировка товаров до пункта назначения'),
          Container(height: 1, color: Colors.orange, margin: const EdgeInsets.symmetric(horizontal: 16)),
          const SizedBox(height: 10),
          // Заказ 2
          _buildOrderItem('Заказ №73522 принят в работу', 'Заказ оплачен. На данном этапе производится комплектация и упаковка товаров'),
          Container(height: 1, color: Colors.orange, margin: const EdgeInsets.symmetric(horizontal: 16)),
          const SizedBox(height: 10),
          // Заказ 3
          _buildOrderItem('Заказ №73522 создан', 'Заказ оплачен и ожидает обработки'),
        ],
      ),
    );
  }

  Widget _buildOrderItem(String orderNumber, String description) {
    return Container(
      padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Оранжевый круг
              CircleAvatar(
                radius: 12,
                backgroundColor: AppColors.orange,
              ),
              const SizedBox(width: 15),
              // Номер заказа
              Text(
                orderNumber,
                  style: AppShrifts.interRegular14.copyWith(color: AppColors.black)
              ),
            ],
          ),
          const SizedBox(height: 4),
          // Описание заказа чуть ниже
          Text(
            description,
            style: AppShrifts.interRegular12.copyWith(color: AppColors.black)
          ),
        ],
      ),
    );
  }
}
