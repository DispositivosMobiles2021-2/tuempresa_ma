import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuempresa_ma/src/presentation/bloc/addProduct_page_bloc/addProduct_page_state.dart';

import 'package:tuempresa_ma/src/data/authentication.dart';
import 'package:tuempresa_ma/src/data/createFirestore.dart';

class AddProductPageCubit extends Cubit<AddProductPageState> {
  AddProductPageCubit() : super(AddProductPageState());

  void inputcantidad(String cantidad) {
    state.cantidad = cantidad;
    emit(state);
  }

  Future<void> changeCantidad(BuildContext context, String operacion) async {
    var cantidad = int.parse(state.cantidad);

    final args = ModalRoute.of(context)!.settings.arguments as Map;

    String company = args["company"].toString();
    String email = args["email"].toString();

    String code = args["code"].toString();

    if (operacion == 'restar') {
      cantidad = cantidad * -1;
    }

    var bodega = 'bodega1';

    var cliente = 'jose';

    //await crearProduct(company, code, 'xxname', 'xxxxdescripcion', 'bodeg2', 55, 'cajas');

    //transaccion(company, cantidad, code, email, cliente, bodega);

    //var states = {'company': enterpriseName, 'name': name, 'email': email};
    Navigator.popUntil(context, ModalRoute.withName('homepage'));
  }
}
