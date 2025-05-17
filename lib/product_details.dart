import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://cdn.shortpixel.ai/spai/q_glossy+ret_img+to_webp/mobizil.com/wp-content/uploads/2019/09/Apple-iPhone-11.jpg";

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    height: 260,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 251, 249, 249),
                    child: Image.network(imageUrl),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        IconButton(
                          padding: const EdgeInsets.all(12),
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Color.fromARGB(255, 209, 208, 208),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          padding: const EdgeInsets.all(12),
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Color.fromARGB(255, 209, 208, 208),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                          ),
                        ),
                        const SizedBox(width: 8),
                        IconButton(
                          padding: const EdgeInsets.all(12),
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Color.fromARGB(255, 209, 208, 208),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share_outlined,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "IPHONE 13pro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Icon(Icons.star, color: Colors.green),
                  Text(
                    '4.8',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '117 reviews',
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.thumb_up_sharp, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    '94%',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.comment, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    '8',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Text(
                    '170\$',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'from 14\$ per month',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "The Nintendo Switch gaming console is a compact device that can be taken everywhere. This portable super device is also equipped with 2 gamepads. ",
                style: TextStyle(color: Colors.black87),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "See more",
                style: TextStyle(color: Colors.blue),
              ),
              const Spacer(),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                        backgroundColor: const Color(0xFFCEEF00),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Add to cart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Delivery on 26 October',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
