import 'package:flutter/material.dart';
import 'package:testes/Models/button_facebook.dart';
import 'package:testes/button_login.dart';
import 'package:testes/dados/reset_senha.dart';

class HomeRegistration extends StatefulWidget {
  const HomeRegistration({super.key});

  @override
  State<HomeRegistration> createState() => _MyDogueState();
}

class _MyDogueState extends State<HomeRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.only(
            top: 60,
            right: 40,
            left: 40,
          ),
          child: ListView(
            children: [
              Icon(
                Icons.person_outlined,
                size: 130,
                color: Colors.orange,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-mail.',
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 40,
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => MyPassword()),
                      ),
                    );
                  },
                  child: Text(
                    'Recuperar senha',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              LoginFacebook(),
              SizedBox(
                height: 15,
              ),
              ResetPassword(),
            ],
          ),
        ),
      ),
    );
  }
}
