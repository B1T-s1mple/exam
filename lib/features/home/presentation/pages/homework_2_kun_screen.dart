import 'package:exam/features/home/presentation/pages/homework_2_kun_2_screem.dart';
import 'package:exam/features/home/presentation/pages/homework_2_kun_3_screen.dart';
import 'package:exam/features/home/presentation/pages/homework_2_kun_4_screen.dart';
import 'package:exam/features/home/presentation/provider/homework_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homework2KunScreen extends StatefulWidget {
  const Homework2KunScreen({super.key});

  @override
  State<Homework2KunScreen> createState() => _Homework2KunScreenState();
}

class _Homework2KunScreenState extends State<Homework2KunScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sabzi AI'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homework2Kun2Screem()),
              );
            },
            icon: Icon(Icons.shopping_cart, color: Colors.red),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homework2Kun3Screen()),
              );
            },
            icon: Icon(Icons.favorite, color: Colors.pink),
          ),
         
        ],
      ),
      body: Consumer<HomeProvider>(
        builder: (context, provider, _) {
          return GridView.builder(
            padding: .all(16.0),
            itemCount: provider.products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 30.0,
              mainAxisExtent: 300,
            ),
            itemBuilder: (context, index) {
              final product = provider.products[index];
              return InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homework2Kun4Screen(
                        hw: {'ds': '${product.description}'},
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 15, color: Colors.grey)],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                product.name,
                                style: TextStyle(fontWeight: .w700),
                              ),
                              Text(product.category),
                              Text("\$${product.price.toString()}"),
                              Row(
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(100),
                                    onTap: () {
                                      provider.addToCart(product);
                                    },
                                    child: CircleAvatar(
                                      radius: 20,
                                      child: Center(child: Icon(Icons.add)),
                                    ),
                                  ),
                                  InkWell(
                                    borderRadius: BorderRadius.circular(100),
                                    onTap: () {
                                      provider.removeToCart(product);
                                    },
                                    child: CircleAvatar(
                                      radius: 20,
                                      child: Center(child: Icon(Icons.remove)),
                                    ),
                                  ),
                                ],
                              ),

                              Column(
                                mainAxisAlignment: .end,

                                children: [
                                  Row(
                                    mainAxisAlignment: .end,
                                    crossAxisAlignment: .end,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          provider.favoriteToCart(product.id);
                                        },
                                        icon: Icon(
                                          Icons.favorite,
                                          color: product.isFavorite
                                              ? Colors.red
                                              : Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
