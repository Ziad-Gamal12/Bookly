import 'package:bookly/core/Models/book_model/item.dart';

String getText(Item item) {
  if (item.volumeInfo.previewLink == null) {
    return "Unavailable";
  } else {
    return "Free Preview";
  }
}
