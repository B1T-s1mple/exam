import 'package:exam/features/home/presentation/provider/homework_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homework2Kun2Screem extends StatefulWidget {
  const Homework2Kun2Screem({super.key});

  @override
  State<Homework2Kun2Screem> createState() => _Homework2Kun2ScreemState();
}

class _Homework2Kun2ScreemState extends State<Homework2Kun2Screem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<HomeProvider>().clearLIst();
            },
            icon: Icon(Icons.delete),
          ),
        ],
      ),
      body: Consumer<HomeProvider>(
        builder: (context, provider, _) {
          if (provider.cart.isEmpty) {
            return Center(child: Text('Cart is empty'));
          }

          return ListView.separated(
            itemCount: provider.cart.length,
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(provider.cart[index].product.name),

                trailing: Text(provider.cart[index].quantity.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
