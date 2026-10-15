import 'package:dmflix/core/hook/hooks.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: size.height * .2,
          // color: Colors.red,
          child: Image.network(url, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: size.height * .002,
          right: size.width * .02,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.black.withValues(alpha: .1),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.volume_off, color: whitecolor, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
