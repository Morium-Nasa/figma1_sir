import 'package:flutter/material.dart';
import 'package:task_app/screen/pages/authentication/tabs/calender.dart';
import 'package:task_app/screen/pages/authentication/tabs/myTask.dart';
import 'package:task_app/screen/pages/authentication/tabs/profile.dart';
import 'package:task_app/screen/pages/authentication/tabs/project.dart';
import 'package:task_app/screen/pages/tab/tabBar.dart';
import 'package:task_app/widget/brand_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  PageController myPageController = PageController();
  List<Widget> _page = [MyTask(), Calender(), TtabBar(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: BrandColors.colorPrimaryDark,
      floatingActionButton: Stack(
        children: [
          Positioned(
              child: FloatingActionButton(
            onPressed: () {
              _show(context);
            },
            child: Icon(Icons.add),
          ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: BrandColors.colorPrimary,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 70,
          child: Row(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }

  Widget navigationIcon() {
    return InkWell(
      onTap: () {},
    );
  }

  _show(BuildContext anik) {
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(120),
          topLeft: Radius.circular(120),
        )),
        // isDismissible: false,
        context: anik,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 1.2,
            child: Center(
              child: DropdownButtonFormField(
                value: _ratingController,
                items: [1, 2, 3, 4, 5, "kjdfg"]
                    .map((label) => DropdownMenuItem(
                          child: Text(label.toString()),
                          value: label,
                        ))
                    .toList(),
                hint: Text('Rating'),
                onChanged: (dynamic value) {
                  setState(() {
                    _ratingController = value;
                  });
                },
              ),
            ),
          );
        });
  }

  var _ratingController;
}
