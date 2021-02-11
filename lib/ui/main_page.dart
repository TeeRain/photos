import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photos/api/api_service.dart';
import 'package:photos/ui/widgets/item_card.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unsplash photos'),
      ),
      body: Center(
        child: FutureBuilder(
          future: ApiService.getPhotos(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            } else {
              print(snapshot.data.toString());
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ItemCard(snapshot.data[index]);
                },
              );
            }
          },
        ),
      ),
    );
  }
}
