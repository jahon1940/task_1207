import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'list.dart';
import 'package:collection/collection.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  List<GridList> filteredData = [];
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xffF5F5F5),
                child: IconButton(
                  iconSize: 50,
                  icon: SvgPicture.asset('assets/Draw/menu2.svg'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: DrawerHeader(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/Draw/profile.png'),
                  ),
                  title: Text('Hemendra '),
                  subtitle: Row(
                    children: [
                      Text('Verifled profile'),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 4,
                        backgroundImage: AssetImage('assets/Draw/Badge.png'),
                      )
                    ],
                  ),
                  trailing: Container(
                    child: Center(
                      child: Text(
                        '3 Orders',
                        style: TextStyle(fontSize: 10, color: Colors.black87),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffF5F5F5),
                    ),
                    width: 55,
                    height: 30,
                  ),
                ),
              ),
            ),
            ...List.generate(DrawList.listinfo.length, (index) {
              return ListTile(
                onTap: () {},
                leading: SvgPicture.asset(DrawList.listinfo[index].icon),
                title: Text(DrawList.listinfo[index].text),
              );
            }),
            SizedBox(
              height: 250,
            ),
            ListTile(
              iconColor: Colors.red,
              leading: Icon(Icons.logout),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          leadingWidth: 100,
          leading: Builder(
            builder: (BuildContext context) {
              return CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xffF5F5F5),
                child: IconButton(
                  icon: SvgPicture.asset('assets/Icon/menu.svg'),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              );
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffF5F5F5),
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/Icon/Bag.svg',
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hemendra',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Welcone to Laza.',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 320,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffF5F5F5),
                          ),
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: 14),
                        onChanged: (s) {
                          setState(() {
                            filteredData = GridList.listinfo
                                .where((element) => element.brand.contains(s))
                                .toList();
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 14, top: 5),
                            child: SvgPicture.asset('assets/Icon/Search.svg',
                                height: 20, width: 20, fit: BoxFit.scaleDown),
                          ),
                          contentPadding: EdgeInsets.only(left: 10, top: 20),
                          border: InputBorder.none,
                          hintText: 'Search by brand...',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: SvgPicture.asset('assets/Icon/Voice.svg',
                          height: 20, width: 20, fit: BoxFit.scaleDown),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff9775FA),
                      ),
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Choose Brand',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...List.generate(BrandList.listinfo.length, (index) {
                        final brand = BrandList.listinfo[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: FilterChip(
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            backgroundColor: brand.isSelected
                                ? Color(0xff9775FA)
                                : Color(0xffF5F5F5),
                            selected: isSelected,
                            onSelected: (e) {
                              setState(() {
                                if (brand.isSelected) {
                                  brand.isSelected = false;
                                  filteredData.clear();
                                  return;
                                }
                                if (BrandList.listinfo.firstWhereOrNull(
                                        (element) => element.isSelected) !=
                                    null) {
                                  BrandList.listinfo
                                      .lastWhere(
                                          (element) => element.isSelected)
                                      .isSelected = false;
                                }
                                brand.isSelected = e;
                                if (brand.isSelected) {
                                  filteredData = GridList.listinfo
                                      .where((element) =>
                                          element.brand == brand.brand)
                                      .toList();
                                }
                              });
                            },
                            label: Row(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    width: 40,
                                    height: 40,
                                    child: SvgPicture.asset(
                                      BrandList.listinfo[index].icon,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  brand.text,
                                  style: TextStyle(
                                      color: brand.isSelected
                                          ? Colors.white
                                          : null),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New Arrial',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 20, top: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (160 / 237),
              ),
              itemCount: filteredData.isEmpty
                  ? GridList.listinfo.length
                  : filteredData.length,
              itemBuilder: (context, index) {
                final product = filteredData.isEmpty
                    ? GridList.listinfo[index]
                    : filteredData[index];
                return Stack(children: [
                  Container(
                    height: 223,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(product.viewImage))),
                  ),
                  Positioned(
                    top: 12,
                    right: 40,
                    child: SvgPicture.asset('assets/Icon/Heart.svg',
                        height: 20, width: 20, fit: BoxFit.scaleDown),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 220, left: 10, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          product.viewTitle,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          product.viewPrice,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ]);
              }),
        ],
      ),
    );
  }
}
