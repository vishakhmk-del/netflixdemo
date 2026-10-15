import 'package:dmflix/core/hook/hooks.dart';

class CustomButtonwidget extends StatelessWidget {
  const CustomButtonwidget({
    super.key,
    required this.icon,
    required this.label,
    this.iconsize = 30,
    this.fontsize = 18,
  });
  final IconData icon;
  final String label;
  final double fontsize;
  final double iconsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: whitecolor, size: iconsize),
        Text(label, style: TextStyle(fontSize: fontsize)),
      ],
    );
  }
}
