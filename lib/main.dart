import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahmoud Resume',

      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.blueAccent
            ],
               begin: Alignment.topLeft,
               end:  Alignment.bottomLeft,
          ),
            image: DecorationImage(image: AssetImage('assets/mahmoud.jpeg'),
            fit: BoxFit.cover,
              filterQuality: FilterQuality.high
            ),
          ),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 20.0,
            ),
            itemBuilder: (BuildContext context, int index) => mahmoudItem(),
            itemCount: 1,
          ),
            ),
          ),
        )
    );
  }
}

Widget mahmoudItem() =>
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // const CircleAvatar(
        //   radius: 100.0,
        //   backgroundImage: AssetImage('assets/mahmoud.jpeg'),
        // ),
        Text(
          'Mahmoud Elnahas',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 40.0,
            color: Colors.grey.shade500,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Accountant',
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            color: Colors.grey.shade400,
            fontSize: 40.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 40.0,
          width: 200.0,
          child: Divider(
            color: Colors.grey.shade400,
            thickness: 3,
          ),
        ),
        Card(
            margin: const EdgeInsets.symmetric(
                vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title: Text(
                '+201115541747',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                ),
              ),
            )),
        Card(
            margin: const EdgeInsets.symmetric(
                vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                'elnahasm239@gmail.com',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro'),
              ),
            )),
        Card(
            margin: const EdgeInsets.symmetric(
                vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.account_balance_outlined,
                color: Colors.teal,
              ),
              title: Text(
                'Cairo-Egypt-Ainshamss-5st sayed ahmed ismail',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro'),
              ),
            )),
        Card(
            margin: const EdgeInsets.symmetric(
                vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.date_range_outlined,
                color: Colors.teal,
              ),
              title: Text(
                '08 /03 /1999',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro'),
              ),
            )),
        Card(
            margin: const EdgeInsets.symmetric(
                vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.work_history,
                color: Colors.teal,
              ),
              title: Text(
                'Experience: \n 1-Worked as a traineer as an accountant in office called (bayt al mal). \n 2-auditing in more than 1 company for example : Agtek company - newphlone trading company - i net work company - Golden arrows.',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    wordSpacing: 5.0,
                    fontFamily: 'Source Sans Pro'),
              ),
            )),
        Card(
            margin: const EdgeInsets.symmetric(
                vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.work,
                color: Colors.teal,
              ),
              title: Text(
                'Skills: \n 1-Microsoft word. \n 2-Microsoft Excel. \n 3-Microsoft VBA. \n 4-Microsoft PowerPoint. \n 5-currently studying python self study.',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    wordSpacing: 5.0,
                    fontFamily: 'Source Sans Pro'),
              ),
            )),
      ],
    );