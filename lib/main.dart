import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App johansitoweb',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce App johansitoweb'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 10, // Número de productos
        itemBuilder: (context, index) {
          return ProductCard();
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              'data:image/jpeg;base64,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', // Imagen de producto
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Producto ${1}', // Nombre del producto
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('\$20.00'), // Precio del producto
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: Text('Agregar al carrito'),
            ),
          ),
        ],
      ),
    );
  }
}
