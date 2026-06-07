class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}


final List<Product> dummyProducts = [
  Product(
    id: '1',
    name: 'iPhone 15 Pro',
    price: 999.99,
    imageUrl: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?w=500',
    description: 'Điện thoại Apple thế hệ mới với vỏ titan siêu bền.',
  ),
  Product(
    id: '2',
    name: 'Samsung Galaxy S24',
    price: 899.99,
    imageUrl: 'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?w=500',
    description: 'Điện thoại đỉnh cao công nghệ AI từ Samsung.',
  ),
  Product(
    id: '3',
    name: 'MacBook Air M3',
    price: 1199.99,
    imageUrl: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=500',
    description: 'Máy tính xách tay siêu mỏng nhẹ, hiệu năng mạnh mẽ.',
  ),
];
