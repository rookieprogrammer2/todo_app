import 'package:flutter/material.dart';
import 'package:todo_app/ui/screens/home_sc/modal_bottom_sheet.dart';
import 'package:todo_app/utilities/app_colors.dart';
import 'package:todo_app/widgets/text_form_field.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomAppBar(),
      floatingActionButton: buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          isScrollControlled: true,
          context: context,
          builder: (context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: const MyBottomSheet(),
          );
        },);
      },
      shape: const StadiumBorder(side: BorderSide(width: 3, color: AppColors.white)),
      child: const Icon(Icons.add),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text("To Do List"),
    );
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      clipBehavior: Clip.hardEdge,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {

          });
        },
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "")
      ]),
    );
  }
}
