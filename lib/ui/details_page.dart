import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photos/ui/widgets/photo.dart';

class DeatailsPage extends StatelessWidget {
  final String fullPhotoPath;

  const DeatailsPage(this.fullPhotoPath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          child: Photo(fullPhotoPath),
        ));
  }
}
