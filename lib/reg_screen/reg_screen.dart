import 'package:flutter/material.dart';
import 'package:stroitel/themes/themes.dart';
import 'package:flutter/services.dart';

class reg_screen extends StatefulWidget {
  const reg_screen({super.key});

  @override
  State<reg_screen> createState() => _reg_screenState();
}

class _reg_screenState extends State<reg_screen> {
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
          padding: EdgeInsets.only(left: 35),
          child: Text(
            "Регистрация",
            style: AppShrifts.interRegular32.copyWith(color: AppColors.black),
          ),
        ),
      ),
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: TextFormField(
                      cursorColor: AppColors.black,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(30),
                      ],
                      decoration: InputDecoration(
                          fillColor: AppColors.white,
                          filled: true,
                          hintText: 'Имя',
                          hintStyle: AppShrifts.interRegular20.copyWith(color: AppColors.lightGrey),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.orange),
                              borderRadius: BorderRadius.zero
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: TextFormField(
                      cursorColor: AppColors.black,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(30),
                      ],
                      decoration: InputDecoration(
                          fillColor: AppColors.white,
                          filled: true,
                          hintText: 'Фамилия',
                          hintStyle: AppShrifts.interRegular20.copyWith(color: AppColors.lightGrey),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.orange),
                              borderRadius: BorderRadius.zero
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: TextFormField(
                      cursorColor: AppColors.black,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(30),
                      ],
                      decoration: InputDecoration(
                          fillColor: AppColors.white,
                          filled: true,
                          hintText: 'Придумайте логин',
                          hintStyle: AppShrifts.interRegular20.copyWith(color: AppColors.lightGrey),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.orange),
                              borderRadius: BorderRadius.zero
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
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
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(11),
                      ],
                      decoration: InputDecoration(
                          fillColor: AppColors.white,
                          filled: true,
                          hintText: 'Номер мобильного телефона',
                          hintStyle: AppShrifts.interRegular20.copyWith(color: AppColors.lightGrey),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.orange),
                              borderRadius: BorderRadius.zero
                          )
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
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/regsms');
                      },
                      child: Text(
                        'Зарегистрироватсья',
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
