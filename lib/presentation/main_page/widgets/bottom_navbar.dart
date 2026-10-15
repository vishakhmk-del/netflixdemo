import 'package:dmflix/core/hook/hooks.dart';

ValueNotifier<int> selectindexNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectindexNotifier,
      builder: (context, int newindex, _) {
        return BottomNavigationBar(
          currentIndex: newindex,
          onTap: (index) {
            selectindexNotifier.value = index;
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: backgroundcolor,
          selectedItemColor: whitecolor,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: whitecolor),
          unselectedIconTheme: IconThemeData(color: Colors.grey),

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: 'New & Hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_emoticon),
              label: 'Fast Laughs',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: 'Downloads',
            ),
          ],
        );
      },
    );
  }
}
