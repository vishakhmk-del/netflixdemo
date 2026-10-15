import 'package:dmflix/core/constants/constants.dart';
import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:dmflix/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterpath;
  final String movieName;
  final String description;
  const ComingSoonWidget({
    super.key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterpath,
    required this.movieName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: 50,
          height: size.height * .55,
          child: Column(
            children: [
              Text(
                month,
                style: TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                day,
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: size.height * .55,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(
                url:posterpath
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      movieName,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 30,
                        letterSpacing: -3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomButtonwidget(
                        icon: Icons.notifications,
                        label: "Remind Me",
                        iconsize: 18,
                        fontsize: 12,
                      ),
                      kwidth10,
                      CustomButtonwidget(
                        icon: Icons.info,
                        label: "Info",
                        iconsize: 18,
                        fontsize: 12,
                      ),
                      kwidth10,
                ],
              ),
              kheight,
              Text("Coming on $day $month"),
              kheight,
              Text(
                movieName,
                maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kheight,
              Text(description,
              maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
