import 'package:dmflix/core/hook/hooks.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 5.w),

        Text(
          title,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(Icons.cast, color: whitecolor, size: 30),
        SizedBox(width: 3.w),
        Container(width: 7.w, height: 3.h, color: Colors.blue),
        SizedBox(width: 5.w),
      ],
    );
  }
}
