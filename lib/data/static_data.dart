import '../models/product.dart';

const List<Product> kproducts = [
    Product(
      id: '1', 
      name: 'Camisa básica', 
      description: 'Algodón 100 %, disponible en varias tallas.', 
      price: 19.99, 
      image: 'assets/camisa_basica.jpg',
    ),
    Product(
    id: '2',
    name: 'Pantalón jean',
    description: 'Denim azul de corte recto.',
    price: 49.50,
    image: 'assets/Pantalon_jean.jpg',
  ),
  Product(
    id: '3',
    name: 'Chaqueta ligera',
    description: 'Resistente al viento, ideal para entretiempo.',
    price: 59.90,
    image: 'assets/Chaqueta_ligera.jpg',
  ),
  Product(
    id: '4',
    name: 'Zapatos deportivos',
    description: 'Suela antideslizante y plantilla acolchada.',
    price: 79.00,
    image: 'assets/Zapatos_deportivos.jpg',
  ),
  Product(
    id: '5',
    name: 'Gorra clásica',
    description: 'Visera curvada y ajuste trasero.',
    price: 19.99,
    image: 'assets/Gorra_clasica.jpg',
  ),
];