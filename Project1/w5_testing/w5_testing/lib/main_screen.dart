import 'package:flutter/material.dart';
import 'components/centered_placeholder.dart';
import 'components/flower.dart';

class MainScreen extends StatelessWidget {
  final String title;

  const MainScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child:Flower()),
    );
  }

  // @override 
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text(title)),
  //     //body: CenteredPlaceholder(padding: 50)
  //     body: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [banner(context), placeHolderRow(), placeHolderRow()]
  //     )
  //   );
  // }

  // Widget banner(BuildContext context) {
  //   return Text('Robin Hoood', style: TextStyle(fontFamily: 'Ranchers', fontSize: 50)); 
  // }

  // Widget paddedPlaceholder() {
  //   return Padding(
  //     padding: EdgeInsets.all(20),
  //     child: SizedBox(
  //       child: Image.asset(
  //         'assets/rh.png',
  //         color: Colors.white,
  //         colorBlendMode: BlendMode.colorBurn,
  //         ),
  //       width: 50, height: 200)
  //   ); 
  // }

  // Widget placeHolderRow() {
  //   return Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [paddedPlaceholder(), paddedPlaceholder()]);
  // }
}