import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            child: ListTile(
              title: Container(alignment: Alignment.topLeft,
              child: const Column(
                children: [
                  Text('Фамилиев', style: TextStyle(color: Colors.white),),
                  Text('Имён', style: TextStyle(color: Colors.white),),
                  Text('Отчествович', style: TextStyle(color: Colors.white),),
                ],
              ),
              ),
              subtitle: const Text('+7 (969) 228 14-88', style: TextStyle(color: Colors.white),),
              //переправить на Image.network
              leading: const Icon(Icons.account_box, color: Colors.white),
              trailing:
              IconButton(
                icon: const Icon(Icons.arrow_right, color: Colors.white,),onPressed: () {}
                ),
                ),
            ),
            const Text('Список резюме'),
            ListView(
              shrinkWrap: true,
              children: const [ListTile(
                tileColor: Colors.white,
                subtitle: Text('Описание'),
                title: Text('Программист'),
              )],
            )
        ]              
      ),
    );
  }
}