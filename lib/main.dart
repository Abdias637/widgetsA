import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de Pambazos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PaginaPrincipal(title: 'Tienda de Pambazos'),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '¡Bienvenido a la tienda de Pambazos!',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción para navegar a la página de productos
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaginaProductos()),
                );
              },
              child: const Text('Explorar Productos'),
            ),
          ],
        ),
      ),
    );
  }
}

class PaginaProductos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Pambazo Especial'),
            subtitle: const Text('Delicioso pambazo relleno de chorizo, papa, lechuga, crema, queso fresco y salsa picante.'),
            trailing: const Text('\$5'), // Precio del producto
            onTap: () {
              // Acción para ver detalles del producto
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaDetallesProducto(nombreProducto: 'Pambazo Especial', precio: '\$5')),
              );
            },
          ),
          ListTile(
            title: const Text('Torta Ahogada'),
            subtitle: const Text('Torta de birote rellena de carnitas bañada en salsa de chile de árbol.'),
            trailing: const Text('\$7'), // Precio del producto
            onTap: () {
              // Acción para ver detalles del producto
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaDetallesProducto(nombreProducto: 'Torta Ahogada', precio: '\$7')),
              );
            },
          ),
          ListTile(
            title: const Text('Churros'),
            subtitle: const Text('Deliciosos churros crujientes cubiertos de azúcar.'),
            trailing: const Text('\$3'), // Precio del producto
            onTap: () {
              // Acción para ver detalles del producto
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaDetallesProducto(nombreProducto: 'Churros', precio: '\$3')),
              );
            },
          ),
          ListTile(
            title: const Text('Taco al Pastor'),
            subtitle: const Text('Tortilla de maíz rellena de carne de cerdo adobada con piña y cebolla.'),
            trailing: const Text('\$2.50'), // Precio del producto
            onTap: () {
              // Acción para ver detalles del producto
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaDetallesProducto(nombreProducto: 'Taco al Pastor', precio: '\$2.50')),
              );
            },
          ),
          ListTile(
            title: const Text('Tlacoyo'),
            subtitle: const Text('Antojito mexicano hecho de masa de maíz relleno de frijoles y queso.'),
            trailing: const Text('\$4'), // Precio del producto
            onTap: () {
              // Acción para ver detalles del producto
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaDetallesProducto(nombreProducto: 'Tlacoyo', precio: '\$4')),
              );
            },
          ),
          ListTile(
            title: const Text('Agua de Horchata'),
            subtitle: const Text('Refrescante bebida de arroz, canela y azúcar.'),
            trailing: const Text('\$1.50'), // Precio del producto
            onTap: () {
              // Acción para ver detalles del producto
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaDetallesProducto(nombreProducto: 'Agua de Horchata', precio: '\$1.50')),
              );
            },
          ),
          ListTile(
            title: const Text('Tamales'),
            subtitle: const Text('Tamales de masa de maíz rellenos de pollo o cerdo y salsa.'),
            trailing: const Text('\$2'), // Precio del producto
            onTap: () {
              // Acción para ver detalles del producto
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaDetallesProducto(nombreProducto: 'Tamales', precio: '\$2')),
              );
            },
          ),
          ListTile(
            title: const Text('Quesadilla'),
            subtitle: const Text('Tortilla de maíz o harina rellena de queso y opcionalmente otros ingredientes.'),
            trailing: const Text('\$3'), // Precio del producto
            onTap: () {
              // Acción para ver detalles del producto
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaDetallesProducto(nombreProducto: 'Quesadilla', precio: '\$3')),
              );
            },
          ),
          ListTile(
            title: const Text('Elote Asado'),
            subtitle: const Text('Elote cocido a la parrilla y cubierto con mayonesa, queso y chile en polvo.'),
            trailing: const Text('\$1.50'), // Precio del producto
            onTap: () {
              // Acción para ver detalles del producto
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaDetallesProducto(nombreProducto: 'Elote Asado', precio: '\$1.50')),
              );
            },
          ),
          ListTile(
            title: const Text('Enchiladas'),
            subtitle: const Text('Tortillas de maíz rellenas de pollo, carne o queso, bañadas en salsa de chile y gratinadas con queso.'),
            trailing: const Text('\$6'), // Precio del producto
            onTap: () {
              // Acción para ver detalles del producto
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaDetallesProducto(nombreProducto: 'Enchiladas', precio: '\$6')),
              );
            },
          ),
          // Puedes agregar más productos si lo deseas
        ],
      ),
    );
  }
}

class PaginaDetallesProducto extends StatelessWidget {
  final String nombreProducto;
  final String precio;

  const PaginaDetallesProducto({Key? key, required this.nombreProducto, required this.precio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de $nombreProducto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Detalles de $nombreProducto',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20),
            Text(
              'Precio: $precio',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
