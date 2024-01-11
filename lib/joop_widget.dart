import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class JoopWidget extends StatelessWidget {
  const JoopWidget({
    this.text,
    this.tus,
    this.onTap,
  });
  final String? text;
  final Color? tus;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        decoration: BoxDecoration(
            color: tus ?? const Color(0xff4CB050),
            borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              color: const Color.fromRGBO(255, 255, 255, 1),
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
