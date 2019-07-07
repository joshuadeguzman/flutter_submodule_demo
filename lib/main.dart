import 'package:flutter/material.dart';
import 'package:flutter_submodule/bloc/movie_detail_bloc_provider.dart';
import 'package:flutter_submodule/ui/movie_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Movie Detail Screen',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MovieDetailBlocProvider(
        child: MovieDetailScreen(
          movieId: 299536,
        ),
      ),
    );
  }
}
