import 'package:flutter/material.dart';

class VacancyPage extends StatelessWidget {
  const VacancyPage({super.key});

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
              SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: const Text('horhorhohohorhohohohohorrrhohorhorhohohorhohohohohorrrhorhorhohorhorhorhohorrhorhohorhorhorhohor', style: TextStyle(color: Colors.white),),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Дата публикации', style: TextStyle(color: Colors.white),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  OutlinedButton(onPressed: () {}, child: const Text('Оклик'),
                  )
                ],
              )
            ],
          )
        )
      ],
    );
  }
}