import 'package:dmflix/core/hook/hooks.dart';

class SearchTitleWidget extends StatelessWidget {
  final String title;
  const SearchTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
