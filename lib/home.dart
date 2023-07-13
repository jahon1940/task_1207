import 'package:flutter/material.dart';

import 'list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        color: Colors.blue,
        height: 200,
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10.0,
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 150.0),
        child: Container(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Ваш баланс'),
                    Text(
                      '\$2,700',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Icon(
                    Icons.visibility,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
        top: 0.0,
        left: 0.0,
        right: 0.0,
        child: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 22.0,
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage(
                          'https://cdn.uzwiki.net/person/rayhon_1642089401.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rayhon Ganiyeva",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'ID:987654321',
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white.withOpacity(0.2),
                    backgroundImage: NetworkImage(
                        'https://www.nicepng.com/png/full/78-784644_circular-question-mark-button-question-mark-icon-white.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 270),
        child: Container(
            height: 70,
            child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.blue,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  ...List.generate(TabList.listinfo.length, (index) {
                    return Tab(
                      iconMargin: EdgeInsets.all(5),
                      icon: TabList.listinfo[index].tabIcon,
                      text: TabList.listinfo[index].tabText,
                    );
                  })
                ])),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 330),
        child: TabBarView(controller: _tabController, children: [
          GridView.builder(
              padding: EdgeInsets.all(24),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (1 / 1.5),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Stack(children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                ViewList.listinfo[index].viewImage))),
                  ),
                  Positioned(
                      top: 12,
                      right: 12,
                      child: Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 180, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          ViewList.listinfo[index].viewTitle,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                            ),
                            Text(ViewList.listinfo[index].viewRate)
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(ViewList.listinfo[index].viewText2),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          ViewList.listinfo[index].viewPrice,
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
          Text('data'),
          Text('data'),
          Text('data'),
        ]),
      ),
    ]));
  }
}
