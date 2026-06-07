import 'package:flutter/material.dart';
import '../models/product.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cửa Hàng Công Nghệ'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tất cả'),
              Tab(text: 'Điện thoại'),
              Tab(text: 'Laptop'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildProductList(context, dummyProducts), // Tab Tất cả
            _buildProductList(context, dummyProducts.where((p) => p.name.contains('iPhone') || p.name.contains('Samsung')).toList()),
            _buildProductList(context, dummyProducts.where((p) => p.name.contains('MacBook')).toList()),
          ],
        ),
      ),
    );
  }


  Widget _buildProductList(BuildContext context, List<Product> products) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ListTile(
            leading: Image.network(product.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
            title: Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('\$${product.price}'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {

              Navigator.pushNamed(
                context,
                '/detail',
                arguments: product,
              );
            },
          ),
        );
      },
    );
  }
}