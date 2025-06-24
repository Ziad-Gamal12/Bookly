import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errmessage;

  const CustomErrorWidget({super.key, required this.errmessage});

  @override
  Widget build(BuildContext context) {
    return Text(
      errmessage,
      style: Styles.textStyle18,
    );
  }
}
