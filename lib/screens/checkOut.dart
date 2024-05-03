import 'package:app_ui/utils/global_var.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(
           onPressed: ()
           {
             qty=0;
             amount=0;
             total=0;
             Navigator.of(context).pop();
           },icon: Icon(Icons.check),

         ),
       ),
      body: Container(
        margin: EdgeInsets.all(10),
         height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text('TotalAmount= ${amount}',style: TextStyle(color: Colors.white,fontSize: 15,),),
                Text('GSt =13%'),
                Text('qty = ${qty}'),

              ],
            ),
          ],
        ),

      ),
    );
  }
}
