import 'package:assignment_rafay/constants/api_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository.dart';
import 'company_state.dart';

class CompanyCubit extends Cubit<CompanyStateList> {
  CompanyCubit() : super(const CompanyStateList.loading());

  final Repository repository = Repository();

  Future<void> fetchList() async {
    try {
      final items = await repository.fetchDataFromServer();
      emit(CompanyStateList.success(items));
    } on Exception catch(e)  {
      print(e);
      emit(const CompanyStateList.failure());
    }
  }
}
