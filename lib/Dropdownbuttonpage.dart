import 'package:flutter/material.dart';
import '../../../../Const/Constclass.dart';

class DropdownButtonScreen extends StatefulWidget {
  final TextEditingController controller;
  const DropdownButtonScreen({Key? key,required this.controller}) : super(key: key);

  @override
  State<DropdownButtonScreen> createState() => _DropdownButtonScreenState();
}

class _DropdownButtonScreenState extends State<DropdownButtonScreen> {


  String dropdownvalue = "";
  var Day =[
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday'
  ];
  @override
  void initState() {
    super.initState();
    // Initialize the dropdown controller with the initial value
    dropdownvalue = widget.controller.text;
    setState(() {

    });
    // ProductTextDatas.Dropcontroller.text=dropdownvalue;
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
          left: 16, top: 10, bottom: 10),
      child:DropdownButtonFormField(
        // controller:Dropcontroller,
        // value: dropdownvalue,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey,width: 1)),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide:
            BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide:
            BorderSide(color: Colors.grey, width: 1),
          ),
        ),
        hint: Text("Day",
          style: TextStyle(color: Colors.grey,fontSize: 16,
            fontFamily: ConstClass.OPENSANS,fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
        icon: Icon(Icons.keyboard_arrow_down_outlined,),
        // value: dropdownvalue,
        onChanged: (String? newValue){
          setState(() {
            dropdownvalue = newValue!;
            widget.controller.text = newValue;
            print(newValue);
          });
        },
        validator: (value){
          if(value == null || value.isEmpty){
            return 'Please select the item';
          }
          return null;
        },
        items: Day.map((String listitmes){
          return DropdownMenuItem(
            value:listitmes,
            child: Text(listitmes),);
        }).toList(),
      ),
    );
  }
}