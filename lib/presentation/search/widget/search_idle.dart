import 'package:dmflix/application/search/search_bloc.dart';
import 'package:dmflix/core/constants/constants.dart';
import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/core/urls/urls.dart';
import 'package:dmflix/presentation/search/widget/title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// const imageUrl =
//     "https://www.themoviedb.org/t/p/w500_and_h282_face/auSRjQyVLw212IjATAbO3KOyxZg.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTitleWidget(title: "Top Searches"),
            kheight,
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state.isError) {
                    return Center(
                      child: Text(
                        "Error occurred",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  } else if (state.idleList.isEmpty) {
                    return Center(
                      child: Text(
                        "No data found",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }

                  return ListView.separated(
                    itemBuilder: (ctx, index) {
                      final movie = state.idleList[index];
                      return TopSearchItemTile(
                        title: movie.title,
                        imageUrl: '$imageAppendUrl${movie.posterPath}',
                      );
                    },
                    separatorBuilder: (ctx, index) => kheight20,
                    itemCount: state.idleList.length,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchItemTile({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * .35,
          height: size.height * .1,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: whitecolor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: whitecolor,
          radius: 25,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: blackcolor,
            child: Icon(CupertinoIcons.play_fill, color: whitecolor),
          ),
        ),
      ],
    );
  }
}
