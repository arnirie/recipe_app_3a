import 'package:flutter/material.dart';
import 'package:pinoyrecipies/components/category_item.dart';
import 'package:pinoyrecipies/data/categorylist.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      lowerBound: 0,
      upperBound: 1,
    );
    //start anim
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pinoy Recipes'),
        centerTitle: true,
      ),
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (_, child) {
          // return Padding(
          //   padding:
          //       EdgeInsets.only(top: 100 - (100 * _animationController.value)),
          //   //0 - 100 => 0 1 / 100 - 0 => 0 1
          //   child: child!,
          // );
          // return SlideTransition(
          //   position: _animationController.drive(Tween(
          //     begin: Offset(-1, -1),
          //     end: Offset(0.5, 0.5),
          //   )),
          //   child: child,
          // );
          // return SlideTransition(
          //   position: Tween(
          //     begin: Offset(0, 1),
          //     end: Offset(0, 0),
          //   ).animate(
          //     CurvedAnimation(
          //       parent: _animationController,
          //       curve: Curves.easeInOut,
          //     ),
          //   ),
          //   child: child,
          // );
          // return FadeTransition(
          //   opacity: Tween<double>(
          //     begin: 0,
          //     end: 1,
          //   ).animate(
          //     CurvedAnimation(
          //         parent: _animationController, curve: Curves.slowMiddle),
          //   ),
          //   child: child,
          // );
          return SizeTransition(
            sizeFactor: CurvedAnimation(
              parent: _animationController,
              curve: Curves.slowMiddle,
            ),
            axis: Axis.horizontal,
            axisAlignment: 1,
            child: child,
          );
        },
        child: GridView.builder(
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: ((_, index) =>
              CategoryItem(category: CATEGORYLIST[index])),
          itemCount: CATEGORYLIST.length,
        ),
      ),
    );
  }
}
