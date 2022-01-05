import 'package:flutter/material.dart';
import 'package:main/model/catalogue_model.dart';

class DetailMovie extends StatelessWidget {
  final Catalogue catalogue;

  DetailMovie({required this.catalogue});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return DetailMobilePage(catalogue: catalogue);
    });
  }
}

class DetailMobilePage extends StatelessWidget {
  final Catalogue catalogue;

  DetailMobilePage({required this.catalogue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset(catalogue.imgAsset),
                        Column(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                children: <Widget>[
                                  const Text(
                                    "Language",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontFamily: 'Staatliches',
                                    ),
                                  ),
                                  Text(catalogue.language,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Oxygen',
                                        fontSize: 16.0,
                                      )),
                                  Container(
                                    margin: const EdgeInsets.only(top: 16.0),
                                    child: const Text(
                                      "Duration",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontFamily: 'Staatliches',
                                      ),
                                    ),
                                  ),
                                  Text(catalogue.duration,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Oxygen',
                                        fontSize: 16.0,
                                      )),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.share_outlined)),
                        IconButton(
                            onPressed: () {}, icon: const FavoriteButton()),
                        IconButton(
                            onPressed: () {}, icon: const BookmarkButton()),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          catalogue.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontFamily: 'Staatliches',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          catalogue.overview,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'Oxygen',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border));
  }
}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BookMarkButtonState();
}

class _BookMarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isBookmark = !isBookmark;
          });
        },
        icon: Icon(isBookmark ? Icons.bookmark : Icons.bookmark_add_outlined));
  }
}
