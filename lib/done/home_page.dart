import 'package:estore_ui/done/category_item.dart';
import 'package:estore_ui/done/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Color greenColor = const Color(0xFF00C853);

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://cdn.shortpixel.ai/spai/q_glossy+ret_img+to_webp/mobizil.com/wp-content/uploads/2019/09/Apple-iPhone-11.jpg";
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 10,
        centerTitle: true,
        title: const Text(
          '92 High Street, London',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        actions: [
          IconButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Color(0xFFc2e505),
              ),
              padding: WidgetStatePropertyAll(
                EdgeInsets.all(14),
              ),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    label: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search),
                          Text("Search the entire shop")
                        ],
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Text("Delivery is "),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: greenColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        "50%",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text("cheaper"),
                    const Spacer(),
                    const Icon(Icons.money),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Categories
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("See all", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 12),
              const SizedBox(
                height: 80,
                child: Row(
                  // scrollDirection: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryItem(icon: Icons.phone_android, label: "Phones"),
                    CategoryItem(
                        icon: Icons.videogame_asset, label: "Consoles"),
                    CategoryItem(icon: Icons.laptop, label: "Laptops"),
                    CategoryItem(icon: Icons.camera_alt, label: "Cameras"),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Flash Sale
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Flash Sale",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text("02:59:23",
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 500,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(0),
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 30,
                  crossAxisCount: 2,
                  children: <Widget>[
                    ProductCard(
                      name: "Apple iPhone 15 Pro",
                      price: "£699.00",
                      oldPrice: "£799.00",
                      imageUrl: imageUrl,
                    ),
                    ProductCard(
                      name: "Apple iPhone 15 Pro",
                      price: "£699.00",
                      oldPrice: "£799.00",
                      imageUrl: imageUrl,
                    ),
                    ProductCard(
                      name: "Apple iPhone 15 Pro",
                      price: "£699.00",
                      oldPrice: "£799.00",
                      imageUrl: imageUrl,
                    ),
                    ProductCard(
                      name: "Samsung Buds Pro",
                      price: "£69.00",
                      oldPrice: "£88.00",
                      imageUrl: imageUrl,
                    ),
                    ProductCard(
                      name: "Apple iPhone 15 Pro",
                      price: "£699.00",
                      oldPrice: "£799.00",
                      imageUrl: imageUrl,
                    ),
                    ProductCard(
                      name: "Samsung Buds Pro",
                      price: "£69.00",
                      oldPrice: "£88.00",
                      imageUrl: imageUrl,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
