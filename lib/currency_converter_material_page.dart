
import 'package:flutter/material.dart';



class CurrencyConverterMaterialPage extends StatefulWidget{
 const  CurrencyConverterMaterialPage({super.key});
    //print('constructor');
  


  @override
  State<CurrencyConverterMaterialPage>  createState()=>
   // print('crete state');
    _CurrencyConverterMaterialPageState();
  
}


class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
   double result =0;
    final TextEditingController textEditingController=TextEditingController();
  // @override
  // void initState(){
  //   super.initState();
  //   print('rebuilt');
  // }
  void convert(){
      
                        setState((){} );
                            result=double.parse(textEditingController.text)*81;

                        
                         
  }

 @override
 Widget build(BuildContext context){
 
  
     print('rebuilt');

    const border =  OutlineInputBorder(
      borderSide:  BorderSide(
        color: Colors.white,
        width: 2,
      ),
      borderRadius:  BorderRadius.all( Radius.circular(60)),
    );

    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: const Text('Currency Converter'),
        centerTitle: true,
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
  '\u20B9 ${result!=0?result.toStringAsFixed(2): result.toStringAsFixed(1)}', // Use ₹ symbol before the result
  style: const TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255),
  ),
),

            Container(
              padding:const  EdgeInsets.all( 10),
             
              child:  TextField(

              
              controller: textEditingController,
                style:  const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: 'Please Enter the amount in USD',
                  hintStyle:  TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.white,
                  filled: true,
                  fillColor: Colors.grey,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                
              ),
            ),
            Padding(
             padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                      onPressed: convert,
                   style: TextButton.styleFrom(
                       backgroundColor: Colors.black, // Remove the extra parenthesis here
                     foregroundColor: Colors.white, // Remove the extra parenthesis here
                     minimumSize: const Size(double.infinity, 50),
                   //shape: MaterialStatePropertyAll(OvalBorder())
                      ),
                      child: const Text('Convert'),
                   ),
                    )

          ],
        ),
      ),
    );
 }
}
// class CurrencyConverterMaterialPagee extends StatelessWidget {
//   const CurrencyConverterMaterialPagee({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//   }
//}
