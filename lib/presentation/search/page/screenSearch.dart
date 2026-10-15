import 'package:dmflix/application/search/search_bloc.dart';
import 'package:dmflix/core/constants/constants.dart';
import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/domain/debouncer/debouncer.dart';
import 'package:dmflix/presentation/search/widget/search_idle.dart';
import 'package:dmflix/presentation/search/widget/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final _debouncer = Debouncer(milliseconds: 1000);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                // keyboardType: TextInputType.text,
                backgroundColor: Colors.grey.withValues(alpha: 0.2),
                style: TextStyle(color: Colors.white),
                prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                onChanged: (value) {
                  if (value.isEmpty) {
                    return;
                  }
                  _debouncer.run(() {
                    BlocProvider.of<SearchBloc>(
                      context,
                    ).add(SearchMovies(movieQuery: value));
                  });
                },
              ),
              kheight,
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state.searchResultList.isEmpty) {
                      return SearchIdleWidget();
                    } else {
                      return SearchResultWidget();
                    }
                  },
                ),
              ),
              // Expanded(child: SearchResultWidget(),),
            ],
          ),
        ),
      ),
    );
  }
}
