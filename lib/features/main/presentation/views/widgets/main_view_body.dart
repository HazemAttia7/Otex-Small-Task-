import 'package:flutter/material.dart';
import 'package:otex_app/features/home/presentation/views/home_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required int currentIndex})
    : _currentIndex = currentIndex;

  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: _currentIndex,
      children: const [
        HomeView(),
        Center(child: Text('محادثة')),
        Center(child: Text('أضف إعلان')),
        Center(child: Text('إعلاناتي')),
        Center(child: Text('حسابي')),
      ],
    );
  }
}
