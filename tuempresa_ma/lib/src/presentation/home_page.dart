import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: const Text('Homepage')),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Bienvenido Usuario',
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
                      subtitle: Text('Descripción'),
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
                      subtitle: Text('Descripción'),
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
                        'Inventarios',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Text('Descripción'),
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
                        'Resumen',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Text('Descripción'),
                      isThreeLine: true,
                      onTap: () {
                        //logica de oprimir tarjeta
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text(
          'Agregar producto',
        ),
        icon: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}