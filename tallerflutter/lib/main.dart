import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.anaheimTextTheme(),
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 174, 152, 218),
        body: Row(
          children: [
            Column(
              //mainaxis alinea verticalmente
              // mainAxisAlignment: MainAxisAlignment.center,
              //crossaxis alinea horizontalmente
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                botton(Icons.bookmark_add_rounded, 'Proyectos', () {}),
                botton(Icons.draw_outlined, 'Borradores', () {}),
                botton(Icons.share, 'Compartido conmigo',
                    () {}),
                const Spacer(),
                botton(Icons.settings, 'Configuraciónes', () {}),
                botton(Icons.people, 'Invitar personas', () {}),
                botton(Icons.drafts, 'Nuevo Borrador', () {}),
                botton(Icons.text_snippet_outlined, 'Nuevo proyecto', () {}),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Side Hustle',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 35,
                      ),
                      SizedBox(width: 800),
                      Icon(Icons.link),
                      SizedBox(width: 50),
                      Text('Compartir'),
                      SizedBox(width: 50),
                      Icon(Icons.more_vert),
                      //
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      nota(),
                      const SizedBox(width: 30),
                      nota(),
                      const SizedBox(width: 30),
                      nota(),
                      const SizedBox(width: 30),
                      nota(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  nota() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 139, 123, 231),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 200,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 173, 224, 248),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 15),
              const Text('Titulo x'),
            ],
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec nisl sodales fermentum. Nullam nec nisl sodales, fermentum nisl nec, fermentum nisl. Nullam nec nisl sodales, fermentum nisl nec, fermentum nisl.'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 171, 158, 245)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  InkWell botton(IconData icon, String text, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
        print(text);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(text),
          ],
        ),
      ),
    );
  }
}