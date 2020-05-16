import 'package:flutter/material.dart';

class BuyPage2 extends StatefulWidget {
  BuyPage2({Key key}) : super(key: key);

  @override
  _BuyPage2State createState() => _BuyPage2State();
}

class _BuyPage2State extends State<BuyPage2>
    with SingleTickerProviderStateMixin {
  Color _mainColor = Color.fromRGBO(47, 101, 101, 1);
  Color _btnColor = Color.fromRGBO(24, 64, 64, 1);

  String _text =
      'یک مبل خوب ویژگی های مختلف زیادی دارد که یکی از مهم‌ترین آنها استفاده از مواد خوب در ساخت آن است.همچنین سطح مبل وقتی که رنگ آمیزی می شود باید کاملاً صاف و یکدست باشد. ';

  Size ds;

  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn);

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    ds = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: _mainColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 20, right: 20, bottom: 180),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: _mainColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 100, right: 60),
                          child: Text(
                            'بهترین های مبل و صندلی',
                            style: TextStyle(
                              color: _mainColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 20, left: 60, right: 60, bottom: 20),
                          padding: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey[300], width: 1))),
                          child: Text(
                            _text,
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: _mainColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 60, bottom: 20),
                          child: Text(
                            'قیمت',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: _mainColor,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 60, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '499',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: _mainColor,
                                ),
                              ),
                              Text(
                                'تومان',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: _mainColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 60, right: 60, bottom: 20),
                            padding: EdgeInsets.all(20),
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: _btnColor,
                            ),
                            child: Text(
                              'خرید',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: ScaleTransition(
                  scale: _animation,
                  alignment: Alignment.center,
                  child: Container(
                    width: 300,
                    height: 300,
                    child: Image.asset(
                      'images/chair_ecom_img3.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
