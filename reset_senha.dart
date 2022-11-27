import 'package:flutter/material.dart';

class MyPassword extends StatefulWidget {
  MyPassword({super.key});

  @override
  State<MyPassword> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyPassword> {
  final TextEditingController _senha = TextEditingController();

  String informacao = '';

  String senhaAtual = 'Camilo12#';
  void dadossenha() {
    setState(() {
      String senhaAlterada = _senha.text;

      if (senhaAtual != senhaAlterada) {
        informacao = 'Senha Alterada com sucesso!';
      }
      if (senhaAtual == senhaAlterada) {
        informacao = 'Senha já ultilizada, por favor use uma diferente!';
      }
      _senha.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(
          30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _senha,
              decoration: InputDecoration(
                labelText: 'Nova Senha',
                helperText: 'Digite a nova senha',
              ),
            ),
            TextField(
              controller: _senha,
              decoration: InputDecoration(
                labelText: 'Repita a Nova Senha',
                helperText: 'Digite a novamente a senha',
              ),
            ),
            ElevatedButton(
              onPressed: dadossenha,
              child: Text(
                'Alterar senha',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              informacao,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
