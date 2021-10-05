import 'package:learn_rest/app/services/cov_api.dart';

class EndpointData {
  EndpointData({required this.values});
  final Map<Endpoint, int> values;

  int? get cases => values[Endpoint.cases];
  int? get casesSuspected => values[Endpoint.casesSuspected];
  int? get casesConfirmed => values[Endpoint.casesConfirmed];
  int? get deaths => values[Endpoint.deaths];
  int? get recovered => values[Endpoint.recovered];

  @override
  String toString() =>
      'cases: $cases, suspected: $casesSuspected, confirmed: $casesConfirmed, deaths: $deaths, recovered: $recovered';
}
