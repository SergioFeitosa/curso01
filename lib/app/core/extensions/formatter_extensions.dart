import 'package:brasil_fields/brasil_fields.dart';

extension FormatterExtensions on double {
  String get currencyPTBR {
    return UtilBrasilFields.obterReal(this);
  }
}