import 'package:flutter/material.dart';
import 'package:sir_abid_assignment_cal/customfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController computercontroller = TextEditingController();
  TextEditingController englishcontroller = TextEditingController();
  TextEditingController urducontroller = TextEditingController();
  TextEditingController physicscontroller = TextEditingController();
  TextEditingController biologycontroller = TextEditingController();
  int obtainedmarks=0;
  double percent=0;
  String grade='';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                  controller: computercontroller,
                  hinttext: 'Enter computer marks',
                  keyboardtype: TextInputType.number),
              CustomTextFormField(
                  controller: englishcontroller,
                  hinttext: 'Enter english marks',
                  keyboardtype: TextInputType.number),
              CustomTextFormField(
                  controller: biologycontroller,
                  hinttext: 'Enter biology marks',
                  keyboardtype: TextInputType.number),
              CustomTextFormField(
                  controller: urducontroller,
                  hinttext: 'Enter urdu marks',
                  keyboardtype: TextInputType.number),
              CustomTextFormField(
                  controller: physicscontroller,
                  hinttext: 'Enter Physics marks',
                  keyboardtype: TextInputType.number),
             Row(children: [

               Expanded(
                 child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.brown,
                         padding:
                         EdgeInsets.symmetric(horizontal: 50, vertical: 18)),
                     onPressed: () {

                       int physics=int.parse(physicscontroller.text);
                       int computer=int.parse(computercontroller.text);
                       int bio=int.parse(biologycontroller.text);
                       int eng=int.parse(englishcontroller.text);
                       int urdu=int.parse(urducontroller.text);

                       obtainedmarks=physics+urdu+eng+computer+bio;

                       percent=obtainedmarks*100/500;

                       // Determine grade based on percentage
                       if (percent >= 90 && percent <=100 ) {
                         grade = 'A+';
                       } else if (percent >= 80&& percent<90) {
                         grade = 'A';
                       } else if (percent >= 70&& percent<80) {
                         grade = 'B';
                       } else if (percent>= 60&& percent<70) {
                         grade = 'C';
                       } else if (percent>= 50&& percent<60) {
                         grade = 'D';
                       } else if(percent>40&& percent<50){
                         grade = 'Fail';
                       }else{
                         grade='invlad entry';
                       }
                       setState(() {

                       });



                     },
                     child: Text('Calculate',style: TextStyle(

                         color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                     ),)),
               ),
               SizedBox(width: 10,),
               Expanded(
                 child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.brown,
                         padding:
                         EdgeInsets.symmetric(horizontal: 50, vertical: 18)),
                     onPressed: () {
                       computercontroller.clear();
                       biologycontroller.clear();
                       physicscontroller.clear();
                       englishcontroller.clear();
                       urducontroller.clear();
grade="";
percent=0;
obtainedmarks=0;
setState(() {

});


                     },
                     child: Text('Clear',style: TextStyle(

                         color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                     ),)),
               )

             ],),


              Text('Obtained Marks:$obtainedmarks',style: TextStyle(

                  color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              Text('Percentage:$percent',style: TextStyle(

                  color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              Text('Grade:$grade',style: TextStyle(

                  color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
