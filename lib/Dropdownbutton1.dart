import 'package:flutter/material.dart';
import '../../../../Const/Constclass.dart';

class DropdownButtonScreenOne extends StatefulWidget {
  final TextEditingController controller;
  const DropdownButtonScreenOne({Key? key,required this.controller}) : super(key: key);

  @override
  State<DropdownButtonScreenOne> createState() => _DropdownButtonScreenOneState();
}

class _DropdownButtonScreenOneState extends State<DropdownButtonScreenOne> {


  String dropdownvalue = "";
  var Month =[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
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
           right: 16, top: 10, bottom: 10),
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
        hint: Text("Month",
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
        items: Month.map((String listitmes){
          return DropdownMenuItem(
            value:listitmes,
            child: Text(listitmes),);
        }).toList(),
      ),
    );
  }
}