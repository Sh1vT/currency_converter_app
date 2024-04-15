import 'package:flutter/material.dart';

//The state issue:
//1. Value of calculator will not update because it is defined in Stateless Widget
//2. To make it update, we need a Stateful Widget
//3. Now after making a stateful widget named CurrencyConverterMaterialPage{}, it requires a 
//method called createState(), so we write that
//4. This createState() method is of State type, and requires to return a state, but we cant return
//a state because it is an abstract class.
//5. So we return a child class of the state class, which has extended state class. This child class
//is _CurrencyConverterMaterialPageState.
//6. _CurrencyConverterMaterialPageState requires a concrete implementation of state.build, basically
//the build function. So we make it here.
//7. Now we can copy the entire build function of the stateless widget inside here and remove the 
//stateless widget altogether

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State createState() =>_CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert(){
    result = double.parse(textEditingController.text)*80;
    setState(() {});
  }

  @override 
  Widget build(BuildContext context){
    final border = OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                );
    const defaultPadding =  EdgeInsets.all(8.0);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            fontSize: 25
          ),
          ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              padding: defaultPadding,
              child: Text('INR ${result!=0?result.toStringAsFixed(2):result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
            ),
            Container(
              padding: defaultPadding,
              child: TextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: 'Amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.white,
                  // filled: true,
                  // fillColor: Colors.grey,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
          Container(
            padding: defaultPadding,
            child: TextButton(
              onPressed: convert, 
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                maximumSize: const Size(double.infinity, double.infinity),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              ),
              child: const Text(
                'Convert', 
                ),
              ),
          ),
          ],
        ),
      ),
    );
  }
}

// class CurrencyConverterMaterialPageUnchanged extends StatelessWidget{
//   const CurrencyConverterMaterialPageUnchanged({super.key});


//   @override
//   Widget build(BuildContext context){
    
//   }
// }


