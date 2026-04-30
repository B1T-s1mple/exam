import 'package:exam/features/home/presentation/cubit/cubit/dars_uyga_vazifa_api_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UygaVazifaApiCubit extends StatefulWidget {
  const UygaVazifaApiCubit({super.key});

  @override
  State<UygaVazifaApiCubit> createState() => _UygaVazifaApiCubitState();
}

class _UygaVazifaApiCubitState extends State<UygaVazifaApiCubit> {
  @override
  void initState() {
    super.initState();
    context.read<DarsUygaVazifaApiCubit>().getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<DarsUygaVazifaApiCubit, DarsUygaVazifaApiState>(
            builder: (context, state) {
              if (state is loading) {
                return Center(child: CircularProgressIndicator.adaptive());
              } else if (state is error) {
                return Center(child: Text(state.mesage));
              } else if (state is loaded) {
                return Expanded(
                  child: ListView.separated(
                    itemCount: state.posts.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 100);
                    },
                    itemBuilder: (context, index) {
                      final dynamic post = state.posts[index];

                      return ListTile(
                        title: Text(post.name),
                        trailing: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (dialogcontext) {
                                return AlertDialog(
                                  actions: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'write nmadur',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                  content: Row(
                                    spacing: 10,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text('apply'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(dialogcontext);
                                        },
                                        child: Text('cancel'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.update),
                        ),
                        subtitle: IconButton(
                          onPressed: () {
                            context.read<DarsUygaVazifaApiCubit>().deletPosts(
                              post.id,
                            );
                          },
                          icon: Icon(Icons.delete),
                        ),
                      );
                    },
                  ),
                );
              }
              return Center(child: Text(state.runtimeType.toString()));
            },
          ),
        ],
      ),
    );
  }
}
