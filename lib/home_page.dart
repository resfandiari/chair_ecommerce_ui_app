import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

//* 47, 101, 101, 1

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Color _mainColor = Color.fromRGBO(47, 101, 101, 1);
  Color _subColor = Color.fromRGBO(235, 245, 246, 1);
  Color _btnColor = Color.fromRGBO(24, 64, 64, 1);

  double p1 = 1.0; // menu
  double p2 = -1.0; // search
  double p3 = 1.0; // trends
  double p4 = 1.0; // chair
  double p5 = 1.0; // green container
  double p6 = 1.0; // sweet
  double p7 = -1.0; // more
  double p8 = 1.0; // buy

  double _startWidth = 90;
  String _startText = 'شروع';

  Size ds;

  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: Duration(milliseconds: 800), vsync: this);
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    ds = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: _subColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.fastOutSlowIn,
                      transform:
                          Matrix4.translationValues(p1 * ds.width, 0.0, 0.0),
                      margin: EdgeInsets.only(top: 20, right: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.search,
                        color: _mainColor,
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.fastOutSlowIn,
                      transform:
                          Matrix4.translationValues(p2 * ds.width, 0.0, 0.0),
                      margin: EdgeInsets.only(top: 20, left: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.menu,
                        color: _mainColor,
                      ),
                    ),
                  ],
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.fastOutSlowIn,
                  transform: Matrix4.translationValues(p3 * ds.width, 0.0, 0.0),
                  margin: EdgeInsets.only(top: 60),
                  child: Text(
                    'مد روز',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: _mainColor,
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.fastOutSlowIn,
                  transform: Matrix4.translationValues(p4 * ds.width, 0.0, 0.0),
                  child: Text(
                    'مبل و صندلی',
                    style: TextStyle(
                      fontSize: 18,
                      color: _mainColor,
                    ),
                  ),
                ),
                ScaleTransition(
                  scale: _animation,
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Image.asset('images/chair_ecom_img3.png'),
                  ),
                ),
                Expanded(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    transform:
                        Matrix4.translationValues(0.0, p5 * ds.height, 0.0),
                    color: _mainColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        AnimatedContainer(
                          duration: Duration(milliseconds: 1100),
                          curve: Curves.fastOutSlowIn,
                          transform: Matrix4.translationValues(
                              p6 * ds.width, 0.0, 0.0),
                          margin: EdgeInsets.only(right: 20, bottom: 30),
                          child: Text(
                            'مدل سبز یاقوتی',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 1100),
                          curve: Curves.fastOutSlowIn,
                          transform: Matrix4.translationValues(
                              p7 * ds.width, 0.0, 0.0),
                          padding: EdgeInsets.only(
                              left: 30, right: 30, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10)),
                            color: _btnColor,
                          ),
                          child: Text(
                            'بیشتر',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: ds.width / 2 - 25,
              top: ds.height - 185,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    p1 = 1.0; // menu
                    p2 = -1.0; // search
                    p3 = 1.0; // trends
                    p4 = 1.0; // chair
                    p5 = 1.0; // green container
                    p6 = 1.0; // sweet
                    p7 = -1.0; // more
                    p8 = 1.0; // buy
                    _animationController.reset();
                  });
                  Future.delayed(const Duration(milliseconds: 600), () {
                    setState(() {
                      Navigator.pushNamed(context, '/buy_page');
                    });
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  curve: Curves.fastOutSlowIn,
                  transform:
                      Matrix4.translationValues(0.0, p8 * ds.height, 0.0),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    color: _mainColor,
                  ),
                ),
              ),
            ),
            Positioned(
              left: ds.width / 2 - 40,
              top: ds.height / 2 - 40,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    p1 = 0.0;
                    p2 = 0.0;
                    p3 = 0.0;
                    p4 = 0.0;
                    p5 = 0.0;
                    p6 = 0.0;
                    p7 = 0.0;
                    p8 = 0.0;
                    _startWidth = 0;
                    _startText = '';
                    _animationController.forward();
                  });
                },
                child: AnimatedContainer(
                  width: _startWidth,
                  duration: Duration(milliseconds: 50),
                  curve: Curves.fastOutSlowIn,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      _startText,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: _mainColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
