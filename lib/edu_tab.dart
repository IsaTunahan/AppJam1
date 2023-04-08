import 'package:flutter/material.dart';
//import 'edu_tytle.dart';
class eduTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
            'Edu büdü'
        ),
      ),
    );
  }
}
  /*
    List myact=[//[education_icon,education_name,[]]
    [ Icons.code_rounded ,"Dart"],
    [ Icons.sports_basketball, "basketball tournament"],
    ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: myact.length ,
      padding: EdgeInsets.all(8.0),

      gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),

      itemBuilder: (context , index){
        return EduTittle(
          education_icon :myact[index][0],
          education_name :myact[index][1],

        );
      },

    );
  }
}
*/