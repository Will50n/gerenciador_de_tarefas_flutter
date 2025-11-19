import 'package:flutter/material.dart';
// import 'toDoListPage.dart';
import 'calendarPage.dart';

String email = "";
String senha = "";

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ACQA Wilson - RA: 1177886'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
              Text(
                'Bem-vindo!',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.deepPurple.shade800,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),

              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration:
                  InputDecoration(border:OutlineInputBorder(),
                  labelText: 'E-mail'
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (text) {
                  senha = text;
                },
                keyboardType: TextInputType.text, 
                obscureText: true,
                decoration:
                  InputDecoration(border:OutlineInputBorder(),
                  labelText: 'Senha'
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                child: Text('Entrar'),
                onPressed: () {
                  if(email == 'mateus@gmail.com' && senha == '123') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CalendarPage())
                    );
                  } else {
                    showDialog(
                      context: context, 
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Login incorreto'),
                          content: Text('Por favor tente novamente com o login e senha corretos'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Fechar')
                            ),
                          ],
                        );
                      }
                    );
                  }
                },
              )
            ]
          )
        )
      )
    );
  }
}