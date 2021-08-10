import 'package:flutter/material.dart';
import 'package:security_app/screen/signIn_page.dart';
import 'package:security_app/screen/signUp_page.dart';

class SignInSignUpPage extends StatefulWidget {
  static const String id = 'SignInSignUpPage';
  const SignInSignUpPage({Key? key}) : super(key: key);

  @override
  _SignInSignUpPageState createState() => _SignInSignUpPageState();
}

class _SignInSignUpPageState extends State<SignInSignUpPage>
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
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false, 
            title: Row(
              children: [
                // Text(
                //   'Welcome To Vigilante',
                //   style: TextStyle(fontSize: 25.0, color: Colors.green[700]),
                // ),
                SizedBox(width: 160),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.grey[200],
                    //height: 70.0,
                    child: Image.asset(
                      'images/logo.png',
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
            centerTitle: true,
            actions: [],
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Colors.orange,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.yellow[800],
              labelStyle:
                  TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              tabs: <Tab>[
                Tab(text: 'Sign In'),
                Tab(text: 'Sign Up'),
              ],
              controller: _tabController,
            ),
            // backgroundColor: Colors.white,
            // body: NestedScrollView(
            //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            //     return <Widget>[
            //       SliverAppBar(
            //         automaticallyImplyLeading: false,
            //         backwardsCompatibility: false,
            //         backgroundColor: Colors.purple[900],
            //         toolbarHeight: 60.0,
            //         centerTitle: true,
            //         title: Text('welcome'),
            //         pinned: true,
            //         floating: false,
            //         forceElevated: innerBoxIsScrolled,
            //         bottom: TabBar(
            //           tabs: <Tab>[
            //             Tab(text: 'Sign In'),
            //             Tab(text: 'Sign Up'),
            //           ],
            //           controller: _tabController,
            //         ),
            //       ),
            //     ];
            //      },
          ),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              SignInPage(),
              SignUpPage(),
            ],
          ),
        ),
      ),
    );
  }
}
