import 'package:get/get.dart';
import 'package:cpfcnpj/cpfcnpj.dart';

class MyController extends GetxController {
  final _isValid = false.obs;
  get isValid => this._isValid.value;
  set isValid(value) => this._isValid.value = value;

  validCpf(value) {
    if (CPF.isValid(value)) {
      this.isValid = true;
      update();
    } else {
      this.isValid = false;
      update();
    }
  }
}
