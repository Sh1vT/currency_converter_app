import 'package:flutter/material.dart';

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




