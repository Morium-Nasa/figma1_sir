import 'package:flutter/material.dart';
import 'package:task_app/model/list.dart';
import 'package:task_app/widget/brand_colors.dart';

class GridVieww extends StatelessWidget {
  const GridVieww({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: GridView.builder(
            itemCount: demoMyFiles.length,
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 40,
                childAspectRatio: 1.5),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              maxRadius: 22,
                              backgroundColor: Colors.grey,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 4,
                              child: CircleAvatar(
                                maxRadius: 5,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.more_vert,
                          color: shadaColor,
                        )
                      ],
                    ),
                    Text("${demoMyFiles[index].title}"),
                    Text("${demoMyFiles[index].email}")
                  ],
                ),
              );
            }),
      ),
    );
  }
}
