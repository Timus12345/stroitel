import 'package:flutter/material.dart';
import 'package:stroitel/themes/themes.dart';
import 'package:flutter/services.dart';

class newpass_screen extends StatefulWidget {
  const newpass_screen({super.key});

  @override
  State<newpass_screen> createState() => _newpass_screenState();
}

class _newpass_screenState extends State<newpass_screen> {
  bool _obscureText1 = true;
  bool _obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/sms');
          },
          icon: Image.asset("strelka_back.png"),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 105),
          child: Text(
            "Вход",
            style: AppShrifts.interRegular32.copyWith(color: AppColors.black),
          ),
        ),
      ),
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Image.asset("logo.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                'Вход в приложение Магазин Строитель',
                textAlign: TextAlign.center,
                style: AppShrifts.interRegular15.copyWith(color: AppColors.orange),
              ),
            ),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      cursorColor: AppColors.black,
                      obscureText: _obscureText1,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(30),
                      ],
                      decoration: InputDecoration(
                        fillColor: AppColors.white,
                        filled: true,
                        hintText: 'Придумайте новый пароль',
                        hintStyle: AppShrifts.interRegular20.copyWith(color: AppColors.lightGrey),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.orange),
                          borderRadius: BorderRadius.zero,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText1 ? Icons.visibility : Icons.visibility_off,
                            color: AppColors.lightGrey,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText1 = !_obscureText1; // Toggle visibility
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      cursorColor: AppColors.black,
                      obscureText: _obscureText2,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(30),
                      ],
                      decoration: InputDecoration(
                        fillColor: AppColors.white,
                        filled: true,
                        hintText: 'Подтвердите пароль',
                        hintStyle: AppShrifts.interRegular20.copyWith(color: AppColors.lightGrey),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.orange),
                          borderRadius: BorderRadius.zero,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText2 ? Icons.visibility : Icons.visibility_off,
                            color: AppColors.lightGrey,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText2 = !_obscureText2; // Toggle visibility
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: const Size(400, 60),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Продолжить',
                        style: AppShrifts.interRegular20.copyWith(color: AppColors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
