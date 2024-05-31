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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 105, 218)),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: const MyHomePage(title: 'Nombre:'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBmwacDPMXaJNywU26CQgJVNNZT7Q8penFJw&s', // Reemplaza con la URL de tu imagen
              height: 150, // Ajusta el alto según sea necesario
              width: 150, // Ajusta el ancho según sea necesario
            ),
            SizedBox(width: 14), // Ajusta el espacio entre la imagen y el texto
            Text(widget.title),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Leonardo Mena Landa',
              style: TextStyle(
                  fontSize: 45, color: const Color.fromARGB(255, 228, 72, 72)),
            ),
          ),
          Center(
            child: SizedBox(
              height: 500.0,
              width: 700.0,
              child: Image.network(
                  'https://p325k7wa.twic.pics/high/dragon-ball/dragonball-project-z/00-page-setup/dbzk_game-thumbnail.jpg?twic=v1/step=10/quality=80/max=760'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}