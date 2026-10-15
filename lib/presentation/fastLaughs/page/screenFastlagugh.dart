import 'package:dmflix/application/fastlaugh/fast_laugh_bloc.dart';
import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/presentation/fastLaughs/widgets/video_list_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(Initialize());
    });

    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state.isError) {
              return Center(child: Text("Error while getting data"));
            } else if (state.videosList.isEmpty) {
              return Center(child: Text("Video list empty"));
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                  state.videosList.length,
                  (index) => VideoListItemInheritedWidget(
                    widget: VideoListItem(
                      key: Key(index.toString()),
                      index: index,
                    ),
                    movieData: state.videosList[index],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
