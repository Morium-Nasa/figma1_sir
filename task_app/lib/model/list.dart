import 'package:flutter/material.dart';
import 'package:task_app/widget/brand_colors.dart';

class CloudStorageInfo {
  final String? svgSrc,
      title,
      totalStorage,
      img,
      type,
      delay,
      details2,
      email,
      taskName;
  final int? id, percentage;
  final Color? color;
  final IconData? icon;
  final String? details;
  final String? time;

  CloudStorageInfo({
    this.taskName,
    this.details,
    this.email,
    this.delay,
    this.details2,
    this.time,
    this.icon,
    this.type,
    this.img,
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.id,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
      delay: "4h",
      taskName: "Web Design",
      email: "mitu@gmail.com",
      details:
          "Conversely, many high-end blogs in the marketing space consistently ",
      type: "Assigned",
      time: "3.03 pm",
      title: "Limon bhai",
      details2:
          "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics",
      id: 1328,
      svgSrc: "assets/icons/Documents.svg",
      totalStorage: "2000",
      color: primaryColor,
      percentage: 35,
      icon: Icons.file_present,
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa5OBcDHB7bXgsunvlgdudK67mlk6BTeyt8sHFm4PXtEcULfjHTlj3SL5t2SnErfHR_2s&usqp=CAU"),
  CloudStorageInfo(
      type: "Open",
      taskName: "App Development",
      email: "pranto@gmail.com",
      details:
          "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics.",
      time: "3.20 pm",
      title: "Waliur bhai",
      id: 56,
      delay: "2h",
      details2:
          "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics",
      svgSrc: "assets/icons/google_drive.svg",
      totalStorage: "200",
      color: Color(0xFFFFA113),
      percentage: 35,
      icon: Icons.drive_folder_upload,
      img:
          "https://thumbs.dreamstime.com/b/male-avatar-icon-flat-style-male-user-icon-cartoon-man-avatar-hipster-vector-stock-91462914.jpg"),
  CloudStorageInfo(
      time: "6.13 pm",
      taskName: "Web Testing",
      icon: Icons.zoom_out_map,
      details:
          "examine definitions for terms used throughout a post. In this case, since I’m talking about long-form and short-form content, we should define what we mean by that.",
      title: "Shirajul Islam",
      delay: "4h",
      id: 132,
      type: "Assigned",
      email: "pranto@gmail.com",
      details2:
          "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics",
      svgSrc: "assets/icons/one_drive.svg",
      totalStorage: "420",
      color: Color(0xFFA4CDFF),
      percentage: 10,
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvWNvxqwJyqQtJQLKuWSGDQaxDG0JQ1LHbV_ffZ1qdFc85UtnfLu1D2IbsKPdIqnUtyE8&usqp=CAU"),
  CloudStorageInfo(
      time: "3.03 pm",
      taskName: "FeedBack Solve",
      details:
          "Honestly, a short blog post with a handful of deep videos embedded in them and an infographic to round it up sounds like long-form content to me, even if the actual word count is lower.",
      icon: Icons.wifi_tethering,
      title: "Abir bhai",
      id: 15,
      delay: "4h",
      details2:
          "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics",
      type: "Open",
      svgSrc: "assets/icons/drop_box.svg",
      totalStorage: "7.3GB",
      email: "pranto@gmail.com",
      color: Color(0xFF007EE5),
      percentage: 78,
      img:
          "https://st3.depositphotos.com/14846838/19463/v/450/depositphotos_194638886-stock-illustration-flat-icon-man-suit.jpg"),
  CloudStorageInfo(
      time: "13.60 pm",
      taskName: "Order Order",
      details: "What is The Point of Diminishing Returns with Blog Word Count?",
      delay: "4h",
      icon: Icons.wifi_tethering,
      title: "Sheehan bhai",
      id: 15,
      details2:
          "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics",
      type: "Assigned",
      svgSrc: "assets/icons/drop_box.svg",
      totalStorage: "7.3GB",
      email: "pranto@gmail.com",
      color: Color(0xFF007EE5),
      percentage: 78,
      img:
          "https://cdn1.vectorstock.com/i/1000x1000/29/65/joyed-businessman-or-clerk-flat-icon-vector-21272965.jpg"),
];

List<MaterialColor> colorItems = [
  Colors.green,
  Colors.deepOrange,
  Colors.red,
  Colors.yellow
];

List<Color> clrList = [
  BrandColors.colorPurple,
  BrandColors.colorGreen,
  BrandColors.colorTealAccent,
  BrandColors.colorYellow,
];
