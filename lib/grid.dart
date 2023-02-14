import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Grid()));
}
class Grid extends StatelessWidget {
  var flex = [
    'https://images.herzindagi.info/image/2022/Nov/winter-fruits.jpg',
    'https://www.cdc.gov/foodsafety/images/comms/features/GettyImages-1247930626-500px.jpg?_=00453',
    'https://thishealthytable.com/wp-content/uploads/2023/01/curry-powder-720x720.jpg',
    'https://5.imimg.com/data5/QJ/MW/TO/SELLER-95700499/cabbage-250x250.jpg',
    'https://lilyvolt.com/wp-content/uploads/Best-tropical-fruits.jpg',
    'https://previews.123rf.com/images/dirkercken/dirkercken1311/dirkercken131100102/23500067-today-only-sign-or-icon-limited-and-exclusive-time-offer.jpg'


  ];
  var names = [
    'Fruits',
    'vegitables',
    'Spices',
    'Exotic vegetables',
    'Exotic Fruits',
    'Today Offers'

  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: GridView.builder(
shrinkWrap: true,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext, int index) {
            return Column(
              children: [
                Expanded(
                    child: Card(
                  child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      flex[index],
                                    ),
                                    fit: BoxFit.cover)),
                          )),
                      SizedBox(height: 10,),
                      Expanded(flex:1,
                          child: Text(names[index]))
                    ],
                  ),
                ))
              ],
            );
          },
          itemCount: flex.length,
        ),

    );
  }
}
