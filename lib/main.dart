import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_using_calculator/Mycontroller.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: ChangeNotifierProvider(create: (context) => Mycontroller(),child: Home(),),));

}
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Mycontroller m= Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("provider calculator"),
      ),
      body: Column(children: [
        Container(

          child: Text("${m.view}",style: TextStyle(fontSize: 20,),),
          decoration: BoxDecoration(color: Colors.black38,
              border: Border.all(width: 3)),
          margin: EdgeInsets.all(3),
          height: 120,
          width: double.infinity,
        ),
        Expanded(child: Row(children: [
          Expanded(child: InkWell(onTap: () {

            m.sum_fun("%");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("%",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {
            m.ce_fun(m.view);

          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("CE",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {
            m.C_fun(m.view);
            // str="";
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("C",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {
          m.equal_fun(m.view);

          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("=",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
        ],)),
        Expanded(child: Row(children: [
          Expanded(child: InkWell(onTap: () {

            m.num_fun("7");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("7",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {

            m.num_fun("8");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("8",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {

            m.num_fun("9");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("9",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {

                  m.sum_fun("/");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("/",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
        ],)),
        Expanded(child: Row(children: [
          Expanded(child: InkWell(onTap: () {

            m.num_fun("4");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("4",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {

            m.num_fun("5");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("5",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {

            m.num_fun("6");
          },
            child: Container(
              margin: EdgeInsets.all(5),

              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("6",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {

            m.sum_fun("*");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("*",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
        ],)),
        Expanded(child: Row(children: [
          Expanded(child: InkWell(onTap: () {

            m.num_fun("1");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("1",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {

            m.num_fun("2");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("2",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {

            m.num_fun("3");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("3",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
          Expanded(child: InkWell(onTap: () {

            m.sum_fun("-");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("-",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
        ],)),
        Expanded(child: Row(children: [
          Expanded(child: InkWell(onTap: () {

            m.num_fun("0");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("0",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),

          Expanded(child: InkWell(onTap: () {

            m.num_fun("00");
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("00",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),


          Expanded(child: InkWell(onTap: () {

            m.sum_fun("+");
            
          },
            child: Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black38,
                  border: Border.all(width: 3)),
              child: Text("+",style: TextStyle(fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
            ),
          )),
        ],)),
      ],),
    );
  }
}
