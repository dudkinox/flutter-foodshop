import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:food/http/client.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../common/logout.dart';
import '../enum/category_foods_enum.dart';
import '../enum/category_pages_enum.dart';
import 'contect.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class Home2 extends StatefulWidget {
  String? name;
  String? lastName;
  String? avatar;
  Home2({Key? key, this.name, this.lastName, this.avatar}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  int indexPage = 0;

  final pages = List.generate(
    categoryFoodsEnum.length,
    (index) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade300,
        image: DecorationImage(
          image: AssetImage(categoryFoodsEnum[index].image),
          fit: BoxFit.cover,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: SizedBox(
        height: 280,
        child: Center(
          child: Text(
            categoryFoodsEnum[index].label,
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 30,
                backgroundColor: Color.fromARGB(77, 0, 0, 0),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("โจ๊กสามไข่"),
      ),
      drawer: showDrawer(),
      body: indexPage == 3
          ? const ContactScreen()
          : ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: Text(
                        "เมนูแนะนำ",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              50, 10, 0, 0),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/joke.jpg",
                                width: 105.0,
                                height: 105.0,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              50, 10, 0, 0),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/steak.jpg",
                                width: 105.0,
                                height: 105.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(35, 10, 0, 0),
                          child: Text(
                            'โจ๊กต้มยำทะเลหม้อดิน',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 10, 0, 0),
                          child: Text(
                            'สเต็กไก่บาบีคิว',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                      child: Text(
                        "โปรโมชั่น",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/promotion.jpg",
                            width: 370.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 200,
                          child: PageView.builder(
                            controller: controller,
                            itemBuilder: (_, index) {
                              return pages[index % pages.length];
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 12),
                          child: Text(
                            'เมนู',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 30),
                          ),
                        ),
                        SmoothPageIndicator(
                          controller: controller,
                          count: pages.length,
                          effect: const WormEffect(
                            dotHeight: 16,
                            dotWidth: 16,
                            type: WormType.thin,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      bottomNavigationBar: ConvexAppBar(
        color: Colors.white,
        backgroundColor: Colors.green,
        items: categoryPagesEnum,
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            indexPage = i;
          });
        },
      ),
    );
  }

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: <Widget>[
            showHeadDrawer(),
            widget.name == null ? signInMenu() : Container(),
            widget.name == null ? registerMenu() : Container(),
            widget.name != null ? const LogoutWidget() : Container(),
          ],
        ),
      );

  ListTile signInMenu() {
    return ListTile(
      leading: const Icon(Icons.login_outlined),
      title: const Text('Sign In'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => const LoginScreen());
        Navigator.push(context, route);
      },
    );
  }

  ListTile registerMenu() {
    return ListTile(
      leading: const Icon(Icons.app_registration),
      title: const Text('Register'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => const RegisterScreen());
        Navigator.push(context, route);
      },
    );
  }

  UserAccountsDrawerHeader showHeadDrawer() {
    return UserAccountsDrawerHeader(
        accountName: widget.name == null
            ? Container(alignment: Alignment.center, child: const Text('Guest'))
            : Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage("$host/${widget.avatar!}"),
                  backgroundColor: Colors.transparent,
                ),
              ),
        accountEmail: widget.name == null
            ? Container(
                alignment: Alignment.center,
                child: const Text('Please login to shop food'))
            : Container(
                alignment: Alignment.center,
                child: Text("${widget.name}.  ${widget.lastName}")));
  }
}
