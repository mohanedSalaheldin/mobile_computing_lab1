import 'package:estore_ui/product_details.dart';
import 'package:flutter/material.dart';

class Homelayout extends StatelessWidget {
  const Homelayout({super.key});

  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://cdn.shortpixel.ai/spai/q_glossy+ret_img+to_webp/mobizil.com/wp-content/uploads/2019/09/Apple-iPhone-11.jpg";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "5 Almazad Street, Bahri",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(14),
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Color(0xFFc2e505),
              ),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade200,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search),
                      Text("Search the entire shop")
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFFe8f5e9),
              ),
              child: Row(
                children: [
                  const Text("Delivery is"),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: 30,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFF00c853),
                    ),
                    child: const Text(
                      "50%",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Text("Cheaper"),
                  const Spacer(),
                  const Icon(Icons.money_off_csred_rounded),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categries",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Color.fromARGB(255, 140, 140, 140)),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoriesItem(
                  icon: Icons.smartphone,
                  label: "Phones",
                ),
                CategoriesItem(
                  icon: Icons.videogame_asset,
                  label: "Consoles",
                ),
                CategoriesItem(
                  icon: Icons.laptop,
                  label: "Laptops",
                ),
                CategoriesItem(
                  icon: Icons.camera,
                  label: "Cameras",
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Flash Sale",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 30,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFfbc02d),
                  ),
                  child: const Text(
                    "20:59:01",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 500,
              child: GridView.count(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(0),
                mainAxisSpacing: 30,
                crossAxisSpacing: 18,
                crossAxisCount: 2,
                children: [
                  ProductCard(imageUrl: imageUrl),
                  ProductCard(imageUrl: imageUrl),
                  ProductCard(imageUrl: imageUrl),
                  ProductCard(imageUrl: imageUrl),
                  ProductCard(imageUrl: imageUrl),
                  ProductCard(imageUrl: imageUrl),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductDetails(),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        width: 150,
        child: Column(
          children: [
            Image.network(
              imageUrl,
              height: 120,
              fit: BoxFit.cover,
            ),
            const Text(
              "IPHONE 13 pro",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "700\$",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "700\$",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CategoriesItem extends StatelessWidget {
  final IconData icon;
  final String label;
  const CategoriesItem({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Icon(icon),
        ),
        Text(label)
      ],
    );
  }
}
