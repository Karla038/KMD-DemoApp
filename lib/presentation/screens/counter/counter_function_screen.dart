import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget{
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;
  //String text = 'Cantidad clic';

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Counter Functions"),
        leading: IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: (){},
          ),
        backgroundColor: const Color.fromARGB(255, 244, 173, 197),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: (){},
            ),
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            onPressed: (){},
            ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(
              fontSize: 160,
              fontWeight: FontWeight.w100)),
             Text( clickCounter == 1 ? 'Cantidad de clic':'Cantidad de clics', style: TextStyle(fontSize: 25),)
          ], //Lo que se agregue aqui se va a mostrar en forma de columnas
        )
      ),
       floatingActionButton:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
         children: [
            CustomButtom(
              icon: Icons.refresh,
              onPressed: (){
                clickCounter = 0;
                setState(() {});
              },
            ),
            const SizedBox(height: 10,),
            CustomButtom(
              icon: Icons.plus_one,
              onPressed: (){
                clickCounter ++;
                setState(() {});
              },
            ),
            const SizedBox(height: 10,),
            CustomButtom(
              icon: Icons.exposure_minus_1,
              onPressed: (){
                if(clickCounter <= 0) return;
                clickCounter --;
                setState(() {});
              },
            ),
         ],
       ),
          
    );
    
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom( /*this.icon,*/ {
    super.key,
    required this.icon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      onPressed: onPressed,
        child: Icon(icon),
    );
  }
}


/*
Si algo se repite mas de una vez se puede hcaer un elemento donde se pueda reciclar 
        */


        