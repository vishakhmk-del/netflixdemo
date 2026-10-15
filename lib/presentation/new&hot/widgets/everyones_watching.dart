import 'package:dmflix/core/constants/constants.dart';
import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:dmflix/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  final String posterpath;
  final String movieName;
  final String description;
  const EveryonesWatchingWidget({
    super.key,
    required this.posterpath,
    required this.movieName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          "Doctor Strange in the Multiverse of Madness (2022)",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(
          "Doctor Strange, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.",
          style: TextStyle(color: Colors.grey),
        ),
        kheight40,
        VideoWidget(
          url:
              "https://www.themoviedb.org/t/p/w500_and_h282_face/AdyJH8kDm8xT8IKTlgpEC15ny4u.jpg",
        ),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonwidget(
              icon: Icons.share,
              label: "Share",
              iconsize: 25,
              fontsize: 16,
            ),
            kwidth10,
            CustomButtonwidget(
              icon: Icons.add,
              label: "My List",
              iconsize: 25,
              fontsize: 16,
            ),
            kwidth10,
            CustomButtonwidget(
              icon: Icons.play_arrow,
              label: "Play",
              iconsize: 25,
              fontsize: 16,
            ),
          ],
        ),
      ],
    );
  }
}
