import 'package:flutter/material.dart';
import 'catalog_screen.dart';
import 'cart_screen.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const _HomeBody(),
      // const CatalogScreen(),
      // const CartScreen(),
    ];

    return Scaffold(
      body: IndexedStack(index: _index, children: pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: const [
          // NavigationDestination(icon: Icon(Icons.home),            label: 'Home'),
          NavigationDestination(icon: Icon(Icons.storefront),      label: 'Catálogo'),
          NavigationDestination(icon: Icon(Icons.shopping_cart),   label: 'Carrito'),
        ],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /* Titulo Home */
            const SizedBox(height: 16),
            Text('Home', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),

            /* Banner */
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                '/assets/banner.jpg', // Imagen promocional
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            /* Titulo "Categorias" */
            const SizedBox(height: 24),
            Text('Categorías', style: Theme.of(context).textTheme.titleMedium),

            /* Iconos circulares de categorías */
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _CategoryIcon(label: 'Camisas', icon: Icons.checkroom),
                _CategoryIcon(label: 'Jeans',   icon: Icons.style),
                _CategoryIcon(label: 'Zapatos', icon: Icons.directions_run),
              ],
            ),

            /* Texto de prueba */
            const SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Por qué elegirnos',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 6),
                const Text('• Envíos 24 h a todo el país'),
                const Text('• Devoluciones gratis 30 días'),
                const Text('• Pagos seguros con tu banco favorito'),
                const Text('• Atención por WhatsApp y correo 24/7'),
                const Text('• Productos de proveedores locales'),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class _CategoryIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  const _CategoryIcon({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.grey.shade400,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}