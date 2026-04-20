import 'package:exam/features/home/presentation/provider/homework_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homework2Kun3Screen extends StatefulWidget {
  const Homework2Kun3Screen({super.key});

  @override
  State<Homework2Kun3Screen> createState() => _Homework2Kun3ScreenState();
}

class _Homework2Kun3ScreenState extends State<Homework2Kun3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorite'),actions: [
             IconButton(
            onPressed: () {
              context.read<HomeProvider>().AntifavoriteToCart();
            },
            icon: Icon(Icons.delete),
          ),
      ],),
      body: Consumer<HomeProvider>(
        builder: (context, provider, _) {
          return ListView.separated(
            itemCount: provider.products.length,
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemBuilder: (context, index) {
              final product = provider.products[index];

              if (product.isFavorite == true) {
                return ListTile(
                  title: Text(provider.products[index].name),
                  trailing: IconButton(
                    onPressed: () {
                      provider.favoriteToCart(product.id);
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: product.isFavorite ? Colors.red : Colors.black,
                    ),
                  ),
                );
              } else {
                return SizedBox.shrink();
              }
            },
          );
        },
      ),
    );
  }
}
