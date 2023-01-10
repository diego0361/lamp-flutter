import 'package:flutter/material.dart'; 

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool light = false;
  bool skyBrightness = false;
  void lightOnOff() {
    setState(() {
      light = !light;
    });
  }

  void skyOnOff() {
    setState(() {
      skyBrightness = !skyBrightness;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: skyOnOff,
      child: Scaffold(
        backgroundColor: skyBrightness
            ? const Color.fromARGB(255, 93, 45, 151)
            : const Color.fromARGB(255, 99, 58, 155),
        appBar: AppBar(
          title: const Text('Minha Lampada'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: IconButton(
            splashRadius: 10,
            iconSize: 200,
            alignment: Alignment.center,
            onPressed: lightOnOff,
            icon: Icon(
              Icons.lightbulb,
              color: light ? Colors.amber : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
