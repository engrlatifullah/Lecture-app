import 'package:flutter/material.dart';

import '../widget/department_details.dart';

class Department extends StatelessWidget {
  final List ? departmentNames;
  const Department({Key? key, this.departmentNames}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10),
      children: departmentNames!.map((e) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_){
              return DepartmentDetails(departmentName: e,);
            },),);
          },
          child: Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(child: Text(e,style: TextStyle(fontSize: 18,color: Colors.white),))
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
