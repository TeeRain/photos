class GalleryItem {
  String authorName;
  String description;
  String imagePath;
  String fullPhotoPath;

  GalleryItem({
    this.authorName,
    this.description,
    this.imagePath,
    this.fullPhotoPath,
  });

  factory GalleryItem.fromJson(Map<dynamic, dynamic> json) => GalleryItem(
      authorName: json['user']['name'],
      description: json['description'] ?? '',
      imagePath: json['urls']['thumb'],
      fullPhotoPath: json['urls']['full']);
}
