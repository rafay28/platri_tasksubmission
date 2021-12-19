class ApiConstants {
  static final String _baseUrl = "http://www.signalficant.de";
  static final String _companiesListEndPoint = "/api/companies";

  static Uri getCompanyUri() => Uri.parse('$_baseUrl$_companiesListEndPoint');

  static Map<String, String> getCustomizedHeader() =>
      {'Content-type': 'application/json', 'Accept': 'application/json'};
}
