import 'package:dmflix/core/constants/constants.dart';
import 'package:dmflix/core/hook/hooks.dart';

final url1 =
    "https://www.themoviedb.org/t/p/w600_and_h900_face/ho824aZtnBzE6FuJRn2znQCq4qQ.jpg";
final url2 =
    "https://www.themoviedb.org/t/p/w440_and_h660_face/6X4qFYBsG3bpWDG2XIKqr04kFJa.jpg";

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: size.width * .3,
      height: size.height * .4,
      decoration: BoxDecoration(
        borderRadius: kradius10,
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(url1)),
      ),
    );
  }
}
