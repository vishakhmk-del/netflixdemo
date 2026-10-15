import 'package:bordered_text/bordered_text.dart';
import 'package:dmflix/core/constants/constants.dart';
import 'package:dmflix/core/hook/hooks.dart';

final url1 =
    "https://www.themoviedb.org/t/p/w600_and_h900_face/ho824aZtnBzE6FuJRn2znQCq4qQ.jpg";
final url2 =
    "https://www.themoviedb.org/t/p/w440_and_h660_face/6X4qFYBsG3bpWDG2XIKqr04kFJa.jpg";

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.size, required this.index});
  final int index;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: size.width * .1, height: size.height * .4),
            Container(
              margin: EdgeInsets.all(5),
              width: size.width * .3,
              height: size.height * .4,
              decoration: BoxDecoration(
                borderRadius: kradius10,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(url2),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: size.height * .046,
          left: size.width * .01,
          // bottom: size.height*.0001,
          child: BorderedText(
            strokeWidth: 10,
            strokeColor: whitecolor,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                color: blackcolor,
                fontSize: 130,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                decorationColor: blackcolor,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
