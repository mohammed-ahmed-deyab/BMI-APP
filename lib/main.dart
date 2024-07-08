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
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: const SingleChildScrollView(
          child: SafeArea(child: costumcolumn()),
        ),
      ),
    );
  }
}

class costumcolumn extends StatefulWidget {
  const costumcolumn({super.key});

  @override
  State<costumcolumn> createState() => _costumcolumnState();
}

class _costumcolumnState extends State<costumcolumn> {
  int age = 0;
  int wieght = 0;
  int height = 0;
  Color m = Colors.grey;
  Color f = Colors.grey;
  double result = 0.0;
  String resultcomment = "??????????????";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'BMI APP',
          style: TextStyle(
              fontSize: 58, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(15),
                height: 141,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'AGE',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$age',
                      style: const TextStyle(
                          fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              age += 1;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 28,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              age -= 1;
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            size: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(15),
                height: 141,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Wieght(KG)',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$wieght',
                      style: const TextStyle(
                          fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              wieght += 1;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 28,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              wieght -= 1;
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            size: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(15),
          height: 141,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Height(cm)',
                style: TextStyle(fontSize: 22),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '$height',
                    style: const TextStyle(
                        fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            height += 1;
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 35,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            height -= 1;
                          });
                        },
                        icon: const Icon(
                          Icons.remove,
                          size: 40,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(15),
          height: 190,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Gender',
                style: TextStyle(fontSize: 22),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'I\'m a ',
                    style: TextStyle(fontSize: 61, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            m = Colors.blue;
                            f = Colors.grey;
                          });
                        },
                        icon: Icon(
                          Icons.male,
                          color: m,
                          size: 38,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            f = Colors.pink;
                            m = Colors.grey;
                          });
                        },
                        icon: Icon(
                          Icons.female,
                          color: f,
                          size: 42,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(15),
          height: 160,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Your Result is',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    '$result',
                    style: const TextStyle(fontSize: 76),
                  ),
                  Text(resultcomment)
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  result = (wieght / ((height / 100) * (height / 100)));
                  result = double.parse(result.toStringAsFixed(1));
                  if (result <= 18.4) {
                    resultcomment = "Under weight";
                  } else if (result > 18.4 && result <= 24.9) {
                    resultcomment = "Normal";
                  } else if (result > 24.9 && result <= 39.9) {
                    resultcomment = "Over weight";
                  } else if (result > 39.9) {
                    resultcomment = "Obese";
                  }
                });
              },
              child: const Text('Calculate')),
        )
      ],
    );
  }
}
