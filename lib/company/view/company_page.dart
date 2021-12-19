import 'package:assignment_rafay/company/cubit/company_cubit.dart';
import 'package:assignment_rafay/company/view/company_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => CompanyCubit(), child: CompanyView());
  }
}
