import 'package:dmflix/core/colors/colors.dart';
import 'package:dmflix/core/constants/constants.dart';
import 'package:dmflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

final url3 =
    "https://www.themoviedb.org/t/p/w600_and_h900_face/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg";

class BackgroundCardWidget extends StatelessWidget {
  const BackgroundCardWidget({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * .7,
          // color: Colors.blue,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(url3),
            ),
          ),
        ),
        Positioned(
          top: size.height * .6,
          left: size.width * .15,
          // bottom: 0,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // kwidth,
              CustomButtonwidget(icon: Icons.add, label: "My List"),
              kwidth20,
              playbutton(),
              kwidth20,
              CustomButtonwidget(icon: Icons.info, label: "info"),
            ],
          ),
        ),
      ],
    );
  }

  TextButton playbutton() {
    return TextButton.icon(
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(whitecolor)),
      icon: Icon(Icons.play_arrow, color: blackcolor, size: 25),
      onPressed: () {},
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text("play", style: TextStyle(fontSize: 20, color: blackcolor)),
      ),
    );
  }
}
