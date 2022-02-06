import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    String name = args['name'].toString();
    String company = args['company'].toString();
    String email = args['email'].toString();

    var states = {'company': company, 'name': name, 'email': email};

    return Scaffold(
        appBar: AppBar(
            title: const Text('Homepage'), automaticallyImplyLeading: false),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Bienvenido $name',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.business_rounded),
                        title: Text(
                          'Bodegas',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        subtitle: Text('Inventario en bodegas'),
                        isThreeLine: true,
                        onTap: () {
                          //logica de oprimir tarjeta
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.people_alt_rounded),
                        title: Text(
                          'Empleados',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        subtitle: Text('Empleados de la empresa'),
                        isThreeLine: true,
                        onTap: () {
                          //logica de oprimir tarjeta
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.inventory),
                        title: Text(
                          'Productos',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        subtitle: Text('Lista de productos existentes'),
                        isThreeLine: true,
                        onTap: () {
                          //logica de oprimir tarjeta
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.calendar_today_rounded),
                        title: Text(
                          'Transacciones',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        subtitle: Text('Resumen de transacciones realizadas'),
                        isThreeLine: true,
                        onTap: () {
                          Navigator.pushNamed(context, 'transaction',
                              arguments: states);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, 'scanpage', arguments: states);
              // Add your onPressed code here!
            },
            heroTag: null,
            label: const Text(
              'transaccion',
            ),
            icon: const Icon(Icons.add),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, 'addProduct', arguments: states);
              // Add your onPressed code here!
            },
            heroTag: null,
            label: const Text(
              'New product',
            ),
            icon: const Icon(Icons.add),
          ),
        ]));
  }
}




      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Row(
      //   children: [
      //     Positioned(
      //         left: 30,
      //         bottom: 20,
      //         child: FloatingActionButton.extended(
      //           onPressed: () {
      //             Navigator.pushNamed(context, 'scanpage', arguments: states);
      //             // Add your onPressed code here!
      //           },
      //           label: const Text(
      //             'transaccion',
      //           ),
      //           icon: const Icon(Icons.add),
      //         )),
      //     Positioned(
      //         bottom: 20,
      //         right: 30,
      //         child: FloatingActionButton.extended(
      //           onPressed: () {
      //             Navigator.pushNamed(context, 'scanpage', arguments: states);
      //             // Add your onPressed code here!
      //           },
      //           label: const Text(
      //             'nuevo producto',
      //           ),
      //           icon: const Icon(Icons.add),
      //         )),