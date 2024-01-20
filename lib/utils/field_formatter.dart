import 'package:wisebiteapp/constant/app_constant.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class FieldFormatter {
  FieldFormatter._privateConstructor();

  static final FieldFormatter _instance = FieldFormatter._privateConstructor();
  String? langCode;

  static FieldFormatter get instance {
    initializeDateFormatting('tr_TR', null);
    return _instance;
  }

  String formatStringToDateddmmyyyy(String? date) {
    if (date == null || date == "") return "";
    langCode = AppConstant.TR;
    var inputFormat = DateFormat("yyyy-mm-dd");
    var datetime = inputFormat.parse(date).toLocal();
    String formattedDate = DateFormat('dd.mm.yyyy').format(datetime);
    return formattedDate;
  }

  String formatDateToStringyyyymmdd(DateTime? date) {
    if (date == null) return "";
    String temp = DateFormat(
      'dd.MM.yyyy',
    ).format(date);
    var inputFormat = DateFormat("dd.mm.yyyy");
    var datetime = inputFormat.parse(temp).toLocal();
    String formattedDate = DateFormat('dd.mm.yyyy').format(datetime);
    return formattedDate;
  }
}
