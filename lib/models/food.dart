class Food {
  final rating;
  final title;
  final subTitle;
  var price;
  final image;
  var amount;
  var isFavorite;

  Food({
    required this.title,
    required this.price,
    required this.rating,
    required this.subTitle,
    required this.image,
    required this.amount,
    required this.isFavorite,
  });
}
