import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './screens/login_page.dart';
import './screens/register_page.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(), // Tela de login inicial
      routes: {
        '/home': (context) => HomePage(), // Rota da página inicial
        '/register': (context) => RegisterPage(), // Rota da tela de registro
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Text("Bem-vindo à página inicial!"),
      ),
    );
  }
}
