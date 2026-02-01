import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/botton_nav_bar/presentation/manager/cubit/bottom_nav_cubit.dart';
import 'package:movies/features/home/presentation/views/home_view.dart';
import 'package:movies/features/saved/persentation/views/saved_view.dart';
import 'package:movies/features/search/presentation/views/search_view.dart';

class MainView extends StatelessWidget {
  MainView({super.key});
  final List pages = [HomeView(), SearchView(), SavedView()];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          body: pages[state.currentIndex],

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.currentIndex,
            onTap: context.read<BottomNavCubit>().changeTab,

            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Saved',
              ),
            ],
          ),
        );
      },
    );
  }
}
