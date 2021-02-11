import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photos/models/gallery_item.dart';
import 'package:photos/ui/details_page.dart';

class ItemCard extends StatelessWidget {
  final GalleryItem item;

  const ItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Text('${item.authorName}'),
                Text('${item.description}'),
                Material(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DeatailsPage(item.fullPhotoPath)));
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(item.imagePath),
                          ),
                        )))
              ],
            )));
  }
}
