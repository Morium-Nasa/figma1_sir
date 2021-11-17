import 'package:flutter/material.dart';
import 'package:task_app/screen/pages/gridView.dart';
import 'package:task_app/widget/brand_colors.dart';

class TtabBar extends StatefulWidget {
  const TtabBar({Key? key}) : super(key: key);

  @override
  _TtabBarState createState() => _TtabBarState();
}

class _TtabBarState extends State<TtabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int bal = 0;
  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrandColors.colorPrimaryDark,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TabBar(
              automaticIndicatorColorAdjustment: false,
              onTap: (int val) {
                print("${val}");
                setState(() {
                  bal = val;
                });
              },
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: bal == 0 ? Colors.blue : shadaColor),
                        child: Text("12"),
                      ),
                      Text(
                        "All",
                        style: TextStyle(
                            color: bal == 0 ? Colors.blue : shadaColor),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: bal == 1 ? Colors.blue : shadaColor),
                        child: Text("12"),
                      ),
                      Text(
                        "All",
                        style: TextStyle(
                            color: bal == 1 ? Colors.blue : shadaColor),
                      ),
                    ],
                  ),
                ),
              ],
              controller: _tabController,
            ),
            Expanded(
              child: TabBarView(
                children: [GridVieww(), Text('Person')],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
