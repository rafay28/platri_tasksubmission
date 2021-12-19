import 'package:assignment_rafay/company/model/Company.dart';

enum ListStatus { loading, success, failure }

class CompanyStateList {
  const CompanyStateList._({
    this.status = ListStatus.loading,
    this.companies = const <Company>[],
  });

  const CompanyStateList.loading() : this._();

  const CompanyStateList.success(List<Company> items)
      : this._(status: ListStatus.success, companies: items);

  const CompanyStateList.failure() : this._(status: ListStatus.failure);

  final ListStatus status;
  final List<Company> companies;

  @override
  List<Object> get props => [status, companies];
}
