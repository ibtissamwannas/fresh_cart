import 'package:fresh_cart/core/models/review_model.dart';

num getAvgRating(List<ReviewModel> reviews) {
  var sum = 0.0;
  for (var review in reviews) {
    sum += review.ratting;
  }
  return sum / reviews.length;
}
