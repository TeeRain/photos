import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photos/ui/details_page.dart';

class Photo extends StatelessWidget {
  final String fullPath;

  const Photo(this.fullPath);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      fullPath,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null)
          return child;
        else
          return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
