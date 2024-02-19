import 'package:flutter/material.dart';
import 'package:flutter_job/themes/colors.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация', style: TextStyle(color: Colors.white))
      ),
      backgroundColor: deepColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.face,
                            color: Colors.white70,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          labelText: 'Фамилия',
                          labelStyle: const TextStyle(
                            color: Colors.white38,
                          ),
                          hintText: 'Фамилия',
                          hintStyle: const TextStyle(color: Colors.white38)))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.face,
                            color: Colors.white70,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          labelText: 'Имя',
                          labelStyle: const TextStyle(
                            color: Colors.white38,
                          ),
                          hintText: 'Имя',
                          hintStyle: const TextStyle(color: Colors.white38)))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.face,
                            color: Colors.white70,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          labelText: 'Отчество',
                          labelStyle: const TextStyle(
                            color: Colors.white38,
                          ),
                          hintText: 'Отчество',
                          hintStyle: const TextStyle(color: Colors.white38)))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Colors.white70,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          labelText: 'Телефон',
                          labelStyle: const TextStyle(
                            color: Colors.white38,
                          ),
                          hintText: 'Телефон',
                          hintStyle: const TextStyle(color: Colors.white38)))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.white70,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          labelText: 'Почта',
                          labelStyle: const TextStyle(
                            color: Colors.white38,
                          ),
                          hintText: 'Почта',
                          hintStyle: const TextStyle(color: Colors.white38)))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.visibility,
                                color: Colors.white70,
                              )),
                          prefixIcon: const Icon(
                            Icons.password,
                            color: Colors.white,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          labelText: 'Пароль',
                          labelStyle: const TextStyle(
                            color: Colors.white38,
                          ),
                          hintText: 'Пароль',
                          hintStyle: const TextStyle(color: Colors.white38)))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Зарегистрироваться'),
                  )),
              InkWell(
                child: const Text(
                  'Есть аккаунт? Войти ! ! !',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Navigator.popAndPushNamed(context, '/'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}