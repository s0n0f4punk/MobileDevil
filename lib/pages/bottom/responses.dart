import 'package:flutter/material.dart';

class ResponsesPage extends StatelessWidget {
  const ResponsesPage({super.key});

  @override
  Widget build(BuildContext context) {
   return ListView(
      children: [
        Card(
          child: Column(
            children: [
              Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Должность', style: TextStyle(color: Colors.white),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  const Text('50 000 - 100 000', style: TextStyle(color: Colors.white),),
                  const Divider(
                    color: Colors.white,
                  )
                ],
              ),
              const Text('jgbcfybtlkgbcfybtlkjdlfksdlfkjsldkfjsldkfjsdfsdfssdfsdfsdfsdfsdfsfdfsdfjdlfksdlfkjsldkfjsldkfjsdfsdfssdfsdfsdfsdfsdfsfdfsdf', style: TextStyle(color: Colors.white),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text('Статус: отказ', style: TextStyle(color: Colors.white),),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.645,
                  ),
              ],),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text('Дата отклика', style: TextStyle(color: Colors.white),),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.638,
                  ),
              ],),
            ],
          )
        )
      ],
    );
  }
}