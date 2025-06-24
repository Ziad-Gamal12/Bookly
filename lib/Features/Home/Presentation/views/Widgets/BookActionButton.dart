import 'package:bookly/core/Models/book_model/item.dart';
import 'package:bookly/core/Widgets/CustomButton.dart';
import 'package:bookly/core/funcitions/Custom_Launch_Url.dart';
import 'package:bookly/core/funcitions/Get_Button_Text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37.5),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                  onPressed: () async {},
                  backgroundColor: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16)),
                  buttonText: "Free",
                  textColor: Colors.black,
                  fontSize: 18)),
          Expanded(
              child: CustomButton(
                  onPressed: () {
                    Custom_Launch_Url(context, item.volumeInfo.previewLink);
                  },
                  backgroundColor: const Color(0xffEF8262),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  buttonText: getText(item),
                  textColor: Colors.white,
                  fontSize: 14))
        ],
      ),
    );
  }
}
