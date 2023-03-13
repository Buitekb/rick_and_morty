import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 64, horizontal: 50),
                child: Image.asset('assets/images/login_img.png'),
              ),
            ),
            const LoginTile(
              title: 'Логин',
              hintText: 'Логин',
              icon: Icons.account_circle_sharp,
              obscure: false,
            ),
            const LoginTile(
              title: 'Пароль',
              hintText: 'Пароль',
              icon: Icons.lock_open_rounded,
              obscure: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      // Within the `FirstRoute` widget
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "Войти",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        primary: const Color(0xFF22A2BD),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "У вас еще нет аккаунта?",
                  style: TextStyle(
                    color: Color(0xFF5B6975),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Создать",
                  style: TextStyle(
                    color: Color(0xFF43D049),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

class LoginTile extends StatelessWidget {
  const LoginTile(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.icon,
      required this.obscure})
      : super(key: key);
  final String title;
  final String hintText;
  final IconData icon;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            obscureText: obscure,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Icon(
                icon,
                color: const Color(0xFF5B6975),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color(0xFFF2F2F2),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color(0xFFF2F2F2),
                ),
              ),
              fillColor: const Color(0xFFF2F2F2),
              filled: true,
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CharactersModels> list = [
      const CharactersModels(
          status: "Живой", name: "Рик Cанчез", gender: "Человек, Мужской"),
      const CharactersModels(
          status: "Живой",
          name: "Директор Агентства",
          gender: "Человек, Мужской"),
      const CharactersModels(
          status: "Живой", name: "Морти Смит", gender: "Человек, Мужской"),
      const CharactersModels(
          status: "Живой", name: "Саммер Смит", gender: "Человек, Женский"),
      const CharactersModels(
          status: "Мертвый", name: "Альберт Эйнштейн", gender: "Человек, Мужской"),
      const CharactersModels(
          status: "Мертвый", name: "Алан Райлс", gender: "Человек, Мужской"),
      const CharactersModels(
          status: "Живой", name: "Рик Cанчез", gender: "Человек, Мужской"),
      const CharactersModels(
          status: "Живой", name: "Рик Cанчез", gender: "Человек, Мужской"),
      const CharactersModels(
          status: "Живой", name: "Рик Cанчез", gender: "Человек, Мужской"),
      const CharactersModels(
          status: "Живой", name: "Рик Cанчез", gender: "Человек, Мужской"),
      const CharactersModels(
          status: "Живой", name: "Рик Cанчез", gender: "Человек, Мужской"),
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                    color: Color(0xFF5B6975),
                  ),
                  suffixIcon: const Icon(
                    Icons.filter,
                    color: Color(0xFF5B6975),
                  ),
                  hintText: "Найти персонажа",
                  fillColor: const Color(0xFFF2F2F4),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(
                      color: Color(0xFFF2F2F2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "ВСЕГО ПЕРСОНАЖЕЙ: 200",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF828282),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.sort_sharp,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, int index) {
                    return CharactersCard(charactersModels: list[index],);
                  },
                  itemCount: list.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CharactersModels extends StatelessWidget {
  const CharactersModels(
      {Key? key,
      required this.status,
      required this.name,
      required this.gender})
      : super(key: key);

  final String status;
  final String name;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CharactersCard extends StatelessWidget {
  const CharactersCard({
    Key? key, required this.charactersModels,
  }) : super(key: key);

  final CharactersModels charactersModels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            child: Image.asset('assets/images/firstCharacter.png'),
          ),
          const SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                charactersModels.status,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: charactersModels.status == "Мертвый" ? Color(0xFFEB5757) : Color(0xFF27AE60),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                 charactersModels.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0B1E2D),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                charactersModels.gender,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF828282),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
