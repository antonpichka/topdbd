import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class DatesTimes extends BaseModel {
  final DateTime? dateTime;

  DatesTimes.success(this.dateTime) : super.success(dateTime.toString());
  DatesTimes.exception(super.exception) :
        dateTime = null,
        super.exception();

  @override
  DatesTimes get getCloneModel => DatesTimes.success(dateTime);
}