import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../Store_page.dart';
import '../appbar.dart';
import '../headerContainer.dart';

final List<Map<String, dynamic>> categories = [
  {
    "name": "Skincare",
    "image": Image.asset('assets/images/bubbles_14897931.png'),
    "color": Colors.white,
  },
  {
    "name": "Makeup",
    "image": Image.asset('assets/images/brush_5040662.png'),
    "color": Colors.white,
  },
  {
    "name": "perfume",
    "image": Image.asset('assets/images/perfume_14289213.png'),
    "color": Colors.white,
  },
  {
    "name": "Hair Care",
    "image": Image.asset('assets/images/hair-conditioner_1807387.png'),
    "color": Colors.white,
  },
  {
    "name": "Sun Care",
    "image": Image.asset('assets/images/sunscreen_17249186.png'),
    "color": Colors.white,
  },
  {
    "name": "Nail Care",
    "image": Image.asset('assets/images/nail-polish_4200570.png'),
    "color": Colors.white,
  },
];
final List<Map<String, dynamic>> products = [
  {
    "name": "Garnier Micellar Cleansing Water",
    "image": Image.asset('assets/images/Garnier-SkinActive-Micellar-Cleansing-Water-All-in-1-Makeup-Remover-3-4-fl-oz_03c5f896-f38b-4507-81b8-8066c381e6ff.e54b775e6fc5486f63d965d7021ae3c1.png'),
    "color": Colors.white,
  },
  {
    "name": "Product 2",
    "image": Image.asset('assets/images/product2.jpg'),
    "color": Colors.red[100],
  },
  {
    "name": "Product 3",
    "image": Image.asset('assets/images/product3.jpg'),
    "color": Colors.purple[100],
  },
  {
    "name": "Product 4",
    "image": Image.asset('assets/images/product4.jpg'),
    "color": Colors.brown[100],
  },
  {
    "name": "Product 5",
    "image": Image.asset('assets/images/product5.jpg'),
    "color": Colors.blue[100],
  },
  {
    "name": "Product 6",
    "image": Image.asset('assets/images/product6.jpg'),
    "color": Colors.green[100],
  },
];
final List<Map<String, dynamic>> product = [
  {
    "name": "Product 1",
    "image": Image.asset('assets/images/product1.jpg'),
    "color": Colors.white,
  },
  {
    "name": "Product 2",
    "image": Image.asset('assets/images/product2.jpg'),
    "color": Colors.red[100],
  },
  {
    "name": "Product 3",
    "image": Image.asset('assets/images/product3.jpg'),
    "color": Colors.purple[100],
  },
  {
    "name": "Product 4",
    "image": Image.asset('assets/images/product4.jpg'),
    "color": Colors.brown[100],
  },
  {
    "name": "Product 5",
    "image": Image.asset('assets/images/product5.jpg'),
    "color": Colors.blue[100],
  },
  {
    "name": "Product 6",
    "image": Image.asset('assets/images/product6.jpg'),
    "color": Colors.green[100],
  },
];


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  const HomeAppBar(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('Search bar tapped'); // Debug statement
                            Get.to(() => StorePage()); // Navigate to StorePage when search bar is tapped
                          },
                          child: Container(
                            height: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              children: [
                                Icon(Iconsax.search_normal, color: Colors.grey),
                                const SizedBox(width: 8.0),
                                const Text(
                                  'Search in Store',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 150, // Adjust as needed
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              final category = categories[index];
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 50, // Adjust size as needed
                                      backgroundColor: category['color'],
                                      child: ClipOval(
                                        child: category['image'],
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      category['name'],
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),

                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
    GridView.builder(
    shrinkWrap: true, // Fit the height of the content
    physics: NeverScrollableScrollPhysics(), // Prevent scrolling if inside a SingleChildScrollView
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // Number of columns
    crossAxisSpacing: 8.0, // Spacing between columns
    mainAxisSpacing: 8.0, // Spacing between rows
    childAspectRatio: 1, // Aspect ratio of each grid item
    ),
    itemCount: products.length,
    itemBuilder: (context, index) {
    final product = products[index];
    return Container(
    decoration: BoxDecoration(
    color: product['color'],
    borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    CircleAvatar(
    radius: 50, // Adjust size as needed
    backgroundColor: Colors.transparent, // Ensure the background is transparent
    child: ClipOval(
    child: product['image'],
    ),
    ),
    SizedBox(height: 8),
    Text(
    product['name'],
    style: TextStyle(
    fontWeight: FontWeight.bold,
    ),
    ),
    ],
    ),
    );

    },
        ),
      ],
    ),
    ),
    );
  }
}
