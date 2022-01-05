import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/detail_movie.dart';
import 'package:main/model/catalogue_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Movie Catalogue",
          style: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Oxygen',
          ),
        ),
      ),
      body: const MovieList(),
    );
  }
}

class MovieList extends StatelessWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Catalogue catalogue = catalogueList[index];
        return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailMovie(catalogue: catalogue);
              }));
            },
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      Image.asset(catalogue.imgAsset),
                    ],
                  ),
                )));
      },
      itemCount: catalogueList.length,
    );
  }
}
