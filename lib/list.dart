import 'package:flutter/material.dart';

class TabList {
  Widget tabIcon;
  String tabText;
  TabList({required this.tabIcon, required this.tabText});
  static List<TabList> listinfo = [
    TabList(
      tabIcon: Icon(Icons.home),
      tabText: 'Культура',
    ),
    TabList(tabIcon: Icon(Icons.home_repair_service), tabText: 'Природа'),
    TabList(tabIcon: Icon(Icons.home_max), tabText: 'Еда'),
    TabList(tabIcon: Icon(Icons.home_mini_outlined), tabText: 'Приключение'),
  ];
}

class ViewList {
  dynamic viewImage;
  String viewTitle;
  dynamic viewRate;
  String viewText2;
  String viewPrice;
  ViewList({
    required this.viewImage,
    required this.viewTitle,
    required this.viewRate,
    required this.viewText2,
    required this.viewPrice,
  });
  static List<ViewList> listinfo = [
    ViewList(
        viewImage:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Colosseo_2020.jpg/300px-Colosseo_2020.jpg',
        viewTitle: 'Колизей',
        viewRate: '4.9 (99 отзывов)',
        viewText2: '253 км от вас',
        viewPrice: '\$350'),
    ViewList(
        viewImage:
            'https://wowitaly.ru/wp-content/uploads/2018/06/%D0%B7%D0%B0%D0%BC%D0%BE%D0%BA-%D1%81%D0%B2%D1%8F%D1%82%D0%BE%D0%B3%D0%BE-%D0%B0%D0%BD%D0%B3%D0%B5%D0%BB%D0%B0-1-870x480.jpg',
        viewTitle: 'замок Сант Анджело',
        viewRate: '3.5 (99 отзывов)',
        viewText2: '324 км от вас',
        viewPrice: '\$240'),
    ViewList(
        viewImage:
            'https://romegid.com/wp-content/uploads/2019/08/eksursii-po-rimu.jpg',
        viewTitle: 'Пантеон',
        viewRate: '5.5 (99 отзывов)',
        viewText2: '444 км от вас',
        viewPrice: '\$200'),
    ViewList(
        viewImage:
            'https://planetofhotels.com/guide/sites/default/files/styles/paragraph__text_with_image___twi_image/public/2022-01/fontain-3.jpg',
        viewTitle: 'фонтан треви',
        viewRate: '2.5 (99 отзывов)',
        viewText2: '600 км от вас',
        viewPrice: '\$120'),
  ];
}
