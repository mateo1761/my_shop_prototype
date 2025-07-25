import 'package:flutter/material.dart';
import 'home_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/pago',
      routes: {
        '/home': (context) => const HomeScreen(),
       
        '/pago': (context) => const PagoPage(),
      },
    );
  }
}

class PagoPage extends StatelessWidget {
  const PagoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Selecciona tu banco'),
                    content: const Text('Aquí podrías mostrar una lista de bancos disponibles.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cerrar'),
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text('Selecciona banco', style: TextStyle(fontSize: 16)),
            ),

            const SizedBox(height: 20),

            const Text(
              'Tus productos',
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),

            const SizedBox(height: 10),

            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  color: Colors.grey.shade300,
                  child: const Icon(Icons.image),
                ),
                title: LinearProgressIndicator(
                  value: 0.7,
                  color: Colors.pink,
                  backgroundColor: Colors.pink.shade100,
                ),
                subtitle: Row(
                  children: List.generate(
                    5,
                    (index) => const Icon(Icons.star, size: 16, color: Colors.pink),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Funcionalidad de pago aquí')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text('Paga', style: TextStyle(fontSize: 16)),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/catalogo');
                    },
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.list, color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.cyan,
                      child: Icon(Icons.home, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  