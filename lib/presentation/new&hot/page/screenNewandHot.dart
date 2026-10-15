import 'package:dmflix/application/hotandnew/hot_and_new_bloc.dart';
import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/core/urls/urls.dart';
import 'package:dmflix/presentation/new&hot/widgets/coming_soon.dart';
import 'package:dmflix/presentation/new&hot/widgets/everyones_watching.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: backgroundcolor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: backgroundcolor,
            title: Text(
              "New & Hot",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: whitecolor,
              ),
            ),
            actions: [
              Icon(Icons.cast, color: whitecolor, size: 30),
              SizedBox(width: 3.w),
              Container(width: 7.w, height: 3.h, color: Colors.blue),
              SizedBox(width: 5.w),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: "🍿 Coming Soon"),
                Tab(text: "👀 Everyone's Watching"),
              ],
              // padding: EdgeInsets.all(8),
              // indicatorPadding: EdgeInsetsGeometry.symmetric(vertical: .9,horizontal:.09),
              indicatorSize: TabBarIndicatorSize.tab,
              tabAlignment: TabAlignment.center,
              dividerColor: Colors.transparent,
              unselectedLabelColor: whitecolor,
              isScrollable: true,
              labelColor: blackcolor,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                color: whitecolor,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ComingsoonList(key:Key('coming_soon')),
             EveryoneWatchingList(context: context,),
             ],
        ),
      ),
    );
  }
}

class EveryoneWatchingList extends StatelessWidget {
  const EveryoneWatchingList({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder:
            (BuildContext context, index) => EveryonesWatchingWidget(
              posterpath: '',
              movieName: '',
              description: '',
            ),
      ),
    );
  }
}

class ComingsoonList extends StatelessWidget {
  const ComingsoonList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_){
      BlocProvider.of<HotAndNewBloc>(context).add(LoadDataInComingSoon());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator(strokeWidth: 2));
        } else if (state.isError) {
          return Center(child: Text("Error while loading comingsoon"));
        } else if (state.comingSoonList.isEmpty) {
          return Center(child: Text("no data found"));
        } else {
          return ListView.builder(
            itemCount: state.comingSoonList.length,
            itemBuilder: (BuildContext context, index) {
              final movie = state.comingSoonList[index];
              if(movie.id==null){
                return SizedBox();
              }
              print(movie.releaseDate);
              String month='';
              String day='';
              try{
                final _date=DateTime.parse(movie.releaseDate!);
              final formatedDt=DateFormat.yMMMMd('en_US').format(_date);
                  month=formatedDt.split(' ').first.substring(0,3);
                  day=movie.releaseDate!.split('-')[1];
                }catch(e){
                    month='';
                    day='';
                }
              // print(formatedDt);
              return ComingSoonWidget(
                id: movie.id.toString(),
                month:month ,
                day: day,
                posterpath:'$imageAppendUrl${movie.posterPath}',
                movieName: movie.title??'No title',
                description: movie.overview??"No description",
              );
            },
          );
        }
      },
    );
  }
}
