import 'package:flutter/material.dart';
import 'edu_tytle.dart';
class eduTab extends StatelessWidget {

 List edugation = [//[eğitimin adı , eğitimin yüzde resmi]
   [ "Flutter Hazırlık" , "img/57.jpeg" ],
   [ "Flutter ile Uygulama Geliştirme Eğitimleri" , "img/53.jpeg" ],
   [ "Flutter ile Örnek Uygulama Geliştirme" , "img/52.jpeg" ],
   [ "Girişimcilik Eğitimleri" , "img/54.jpeg" ],
   [ "Hukuk Eğitimleri" , "img/56.jpeg" ],
   [ "Finans Eğitimleri" , "img/57.jpeg" ],
   [ "insan Kaynakları Eğitimleri" , "img/58.jpeg" ],
   [ "Yazılımcılar İçin İngilizce Eğitimleri" , "img/58.jpeg" ],
 ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: edugation.length,
        itemBuilder: (BuildContext context, int index) {
          return EduTittle(
            education_name :edugation[index][0],
            education_percent :edugation[index][1],

          );
          },
      ),
    );
  }
}
