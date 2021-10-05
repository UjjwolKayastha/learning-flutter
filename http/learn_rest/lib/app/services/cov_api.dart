import 'package:learn_rest/app/services/cov_api_keys.dart';

enum Endpoint { cases, casesSuspected, casesConfirmed, deaths, recovered }

class API {
  API({required this.apiKey});

  final String apiKey;

  factory API.sandbox() => API(apiKey: APIKeys.covSandboxKey);

  static const String host = "ncov2019-admin.firebaseapp.com";

  Uri tokenUri() => Uri(scheme: "https", host: host, path: "token");

  Uri endpointUri(Endpoint endpoint) =>
      Uri(scheme: "https", host: host, path: _paths[endpoint]);

  static final Map<Endpoint, String> _paths = {
    Endpoint.cases: "cases",
    Endpoint.casesSuspected: "casesSuspected",
    Endpoint.casesConfirmed: "casesConfirmed",
    Endpoint.deaths: "deaths",
    Endpoint.recovered: "recovered",
  };
}
