import 'dart:math';

import 'package:dmflix/application/downloads/downloads_bloc.dart';
import 'package:dmflix/core/constants/constants.dart';
import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/core/urls/urls.dart';
import 'package:dmflix/presentation/widgets/app_bar_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [Smartdownloads(), Section2(), Section3()];
  @override
  Widget build(BuildContext context) {
    // final Size size=MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: "Downloads"),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(3),
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => SizedBox(height: 5.h),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Smartdownloads extends StatelessWidget {
  const Smartdownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 5.w),
        Icon(Icons.settings, color: whitecolor),
        SizedBox(width: 5.w),
        Text(
          "Smart Downloads",
          style: TextStyle(
            color: whitecolor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    this.angle = 0,
    required this.imageList,
    required this.margin,
    required this.size,
    this.radius = 10,
  });

  final double angle;
  final String imageList;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageList),
          ),
        ),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(
        context,
      ).add(DownloadsEvent.getDownloadsImage());
    });

    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          "Introducing Downloads For You",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: whitecolor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        Text(
          "We'll Download a personalised selection of\nmovies and shows for you, So there's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            //         if (state.downloads == null || state.downloads!.length < 3) {
            //   return const Center(
            //     child: CircularProgressIndicator(),
            //   );
            // }
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.downloads == null || state.downloads!.length < 3) {
              return const Center(
                child: Text(
                  'No downloads available',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }

            // final downloads = state.downloads!;
            return SizedBox(
              width: size.width / .35.w,
              height: size.height / .35.h,

              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[700],
                    radius: size.width * 0.5.w,
                  ),
                  DownloadsImageWidget(
                    angle: 13,
                    size: Size(size.width * 0.1.w, size.width * 0.145.w),
                    imageList:
                        '$imageAppendUrl${state.downloads?[0].posterPath}',

                    margin: EdgeInsets.only(left: 130, bottom: 20),
                  ),
                  DownloadsImageWidget(
                    angle: -13,
                    size: Size(size.width * 0.1.w, size.width * 0.145.w),
                    imageList:
                        '$imageAppendUrl${state.downloads?[1].posterPath}',
                    margin: EdgeInsets.only(right: 130, bottom: 20),
                  ),
                  DownloadsImageWidget(
                    size: Size(size.width * 0.1015.w, size.width * 0.158.w),
                    imageList:
                        '$imageAppendUrl${state.downloads?[2].posterPath}',
                    margin: EdgeInsets.only(bottom: 2),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: kbtnColorblue,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "Set up",
                style: TextStyle(
                  color: whitecolor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: kbtnColorwhite,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "See what you can download",
              style: TextStyle(
                color: blackcolor,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
