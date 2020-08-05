import 'package:flutter/material.dart';

class LogDetail extends StatelessWidget {

  final bool lights;
  const LogDetail({Key key, this.lights}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child:TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: 'Title', 
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lights ? Colors.white : Colors.grey,)
                    )
                  ),
                )
              ),
            ]
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child:TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: 'Body', 
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lights ? Colors.white : Colors.grey,)
                    )
                  ),
                )
              ),
            ]
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child:TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: 'Rating', 
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lights ? Colors.white : Colors.grey,)
                    )
                  ),
                )
              ),
            ]
          ),
          SizedBox(height: 10),
          placeHolderRow(context, 'Save', 'Cancel'),
        ],
      )
    );
  }

  Widget placeHolderRow(BuildContext context, var stringOne, var stringTwo) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          onPressed: () => Navigator.of(context).pop(),  //go back
          child: paddedStringRow(stringOne), 
        ),
        RaisedButton(
          onPressed: () => Navigator.of(context).pop(),  //go back
          child: paddedStringRow(stringTwo), 
        ), 
      ]
    );
  }

  Widget paddedStringRow(var someString) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Text(someString)
    );
  }
}