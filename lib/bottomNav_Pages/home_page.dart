import 'package:flutter/material.dart';
import 'package:security_app/components/Appbutton.dart';
import 'package:security_app/components/SearchField.dart';
import 'package:security_app/bottomNav_pages/home/feed.dart';
import 'package:security_app/components/speeddial.dart';

class HomePage extends StatefulWidget {
  static const String id = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        floatingActionButton: ButtonSpeedDial(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black54,
          actions: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                              image: NetworkImage(
                                  'https://hindibate.com/wp/Good-morning-nature-bird-image-304.png'), //AssetImage('images/logo.png'),
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover),
                        ),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(width: 2.0),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.greenAccent[700],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 4),
                child: MySearchField(searchController: _searchController),
              ),
            ),
            Expanded(
                child: IconButton(
              icon:
                  Icon(Icons.add_alert, size: 35.0, color: Colors.yellow[800]),
              onPressed: () {},
            )),
          ],
        ),
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                backwardsCompatibility: false,
                backgroundColor: Colors.white,
                toolbarHeight: 60.0,
                centerTitle: true,
                title: Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 2.0),
                  child: RoundedButton(
                    title: 'Report Incident',
                    color: Colors.black,
                    onpressed: () {
                      //Implement login functionality.
                    },
                  ),
                ),
                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                bottom: TabBar(
                  indicatorColor: Colors.orange,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.yellow[800],
                  labelStyle:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  tabs: <Tab>[
                    Tab(text: 'My Feed'),
                    Tab(text: 'Popular'),
                    Tab(text: 'Favourite')
                  ],
                  controller: _tabController,
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[Feed(), Feed(), Feed()],
          ),
        ),
      ),
    );
  }
}
