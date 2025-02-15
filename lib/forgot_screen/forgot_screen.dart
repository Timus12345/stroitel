import 'package:flutter/material.dart';
import 'package:stroitel/themes/themes.dart';
import 'package:flutter/services.dart';

class forgot_screen extends StatelessWidget {
  const forgot_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: () {Navigator.pushReplacementNamed(context, '/pass'); }, icon: Image.asset("strelka_back.png")),
          title: Padding(padding: EdgeInsets.only(left: 105),
            child: Text("Вход", style: AppShrifts.interRegular32.copyWith(color: AppColors.black),),
          )
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
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(30),
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
                      onPressed: () {Navigator.pushReplacementNamed(context, '/sms');},
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
