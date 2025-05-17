import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Color greenColor = const Color(0xFFCEEF00);

  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://cdn.shortpixel.ai/spai/q_glossy+ret_img+to_webp/mobizil.com/wp-content/uploads/2019/09/Apple-iPhone-11.jpg";

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 260,
                  width: double.infinity,
                  color: Colors.grey.shade100,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: 8),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(Icons.share),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Nintendo Switch, Gray",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),

                    const Row(
                      children: [
                        Icon(Icons.star, color: Colors.green, size: 18),
                        SizedBox(width: 4),
                        Text("4.8",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 6),
                        Text("117 reviews",
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 12),
                        Icon(Icons.thumb_up, color: Colors.green, size: 18),
                        Text(" 94%"),
                        SizedBox(width: 12),
                        Icon(Icons.message, size: 18, color: Colors.grey),
                        Text(" 8"),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        Text(
                          "£169.00",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "from £14 per month",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    const Text(
                      "The Nintendo Switch gaming console is a compact device that can be taken everywhere. This portable super device is also equipped with 2 gamepads. ",
                      style: TextStyle(color: Colors.black87),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Read more",
                      style: TextStyle(color: Colors.blue),
                    ),
                    const Spacer(),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: greenColor,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Add to cart",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Center(
                          child: Text(
                            "Delivery on 26 October",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
