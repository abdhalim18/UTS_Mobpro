import 'package:flutter/material.dart';
import 'product_detail_page.dart';
import 'profile_page.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  final List<Map<String, dynamic>> services = const [
    {
      "name": "Laundry",
      "price": "Rp. 10.000/kg",
      "image": "assets/laundry.png",
      "description": "Jaminan cuci bersih, wangi, dan rapi.",
    },
    {
      "name": "Pijat",
      "price": "Rp. 50.000",
      "image": "assets/pijat.png",
      "description": "Pijat badan, Pijat capek, Pijat urat.",
    },
    {
      "name": "service Laptop",
      "price": "Rp. 150.000",
      "image": "assets/service_laptop.png",
      "description": "Layanan service laptop dengan kualitas terbaik.",
    },
    {
      "name": "Service TV",
      "price": "Rp. 200.000-700.000",
      "image": "assets/service_tv.png",
      "description": "Layanan service TV dengan kualitas terbaik.",
    },
    {
      "name": "Service Kulkas",
      "price": "Rp. 1500.000 - 400.000",
      "image": "assets/kulkas.png",
      "description": "Layanan service Kulkas dengan kualitas terbaik.",
    },
    {
      "name": "Potong Rambut",
      "price": "Rp. 30.000",
      "image": "assets/barber.png",
      "description": "Layanan service Mesin Cuci dengan kualitas terbaik.",
    },
  ];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Panggilan'),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/keranjang.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {
              // Aksi untuk ikon keranjang
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/profile_picture.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Apa yang anda cari?',
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  final service = services[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                            name: service['name'],
                            price: service['price'],
                            image: service['image'],
                            description: service['description'],
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            service['image'],
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            service['name'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(service['price']),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
