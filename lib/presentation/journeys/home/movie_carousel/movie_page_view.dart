import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/common/constants/size_constants.dart';
import 'package:movie_app/common/screenutil/screenutil.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/presentation/blocs/movie_backdrop/movie_backdrop_bloc.dart';
import 'package:movie_app/presentation/journeys/home/movie_carousel/animated_movie_card_widget.dart';
import 'package:movie_app/common/extensions/size_extensions.dart';

class MoviePageView extends StatefulWidget {
  final List<MovieEntity> movies;
  final int initialPage;

  const MoviePageView({
    Key key,
    @required this.movies,
    @required this.initialPage,
  }) : super(key: key);

  @override
  _MoviePageViewState createState() => _MoviePageViewState();
}

class _MoviePageViewState extends State<MoviePageView> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: widget.initialPage,
      keepPage: false,
      viewportFraction: 0.7,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Sizes.dimen_10.h),
      height: ScreenUtil.screenHeight * 0.35,
      child: PageView.builder(
        controller: _pageController,
        pageSnapping: true,
        itemBuilder: (context, index) {
          final movie = widget.movies[index];
          return AnimatedMovieCardWidget(
            index: index,
            movieId: movie.id,
            posterPath: movie.posterPath,
            pageController: _pageController,
          );
        },
        itemCount: widget.movies?.length ?? 0,
        onPageChanged: (index) {
          BlocProvider.of<MovieBackdropBloc>(context)
              .add(MovieBackdropChangedEvent(widget.movies[index]));
        },
      ),
    );
  }
}
