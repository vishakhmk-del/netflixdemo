import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/presentation/downloads/page/screen_downloads.dart';
import 'package:dmflix/presentation/fastLaughs/page/screenFastlagugh.dart';
import 'package:dmflix/presentation/home/page/screenhome.dart';
import 'package:dmflix/presentation/new&hot/page/screenNewandHot.dart';
import 'package:dmflix/presentation/search/page/screenSearch.dart';

class ScreenMainpage extends StatelessWidget {
  ScreenMainpage({super.key});

  final pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaughs(),
    ScreenSearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectindexNotifier,
          builder: (context, int newindex, _) {
            return pages[newindex];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
