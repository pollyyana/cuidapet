import 'dart:async';

import 'package:cuidapet/app/core/helpers/constants.dart';
import 'package:cuidapet/app/core/helpers/enviroments.dart';
import 'package:cuidapet/app/core/rest_client/rest_client.dart';
import 'package:cuidapet/app/core/rest_client/rest_client_response.dart';
import 'package:dio/dio.dart';

class DioRestClient implements RestClient {
  late final Dio _dio;

  //  final int timeout = int.tryParse(Enviroments.param(Constants.ENV_REST_CLIENT_CONNECT_TIMEOUT_KEY) ?? '') ?? 0;

  // qlq alteração na criação do projeto
  final _defaultOptions = BaseOptions(
    baseUrl: Enviroments.param(Constants.ENV_BASE_URL_KEY) ?? '',
    connectTimeout: Duration(
        seconds:
            int.fromEnvironment(Constants.ENV_REST_CLIENT_CONNECT_TIMEOUT_KEY)),
    receiveTimeout: Duration(
        seconds:
            int.fromEnvironment(Constants.ENV_REST_CLIENT_RECEIVE_TIMEOUT_KEY)),
    // connectTimeout: Duration(seconds: 10).
    // receiveTimeout: Duration(seconds: 10),
  );

  DioRestClient({BaseOptions? baseOptions}) {
    _dio = Dio(baseOptions ?? _defaultOptions);
  }

  /*
  auth(): Sinaliza que a requisição precisa de autenticação (coloca auth_required: true nos extra).
  unauth(): Sinaliza que não é necessário autenticação (coloca auth_required: false).
   */
  @override
  RestClient auth() {
    _defaultOptions.extra['auth_required'] = true;
    return this;
  }

  //usar ou nao uma atenticaçao
  @override
  RestClient unauth() {
    _defaultOptions.extra['auth_required'] = false;
    return this;
  }

  @override
  Future<RestClientResponse<T>> delete<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    final response = await _dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
    return RestClientResponse(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage);
  }

  @override
  Future<RestClientResponse<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters, Map<String, dynamic>? headers}) {
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> patch<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) {
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> post<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) {
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> put<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) {
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> request<T>(String path,
      {required String method,
      data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) {
    throw UnimplementedError();
  }
}

/*
path: O endpoint da API a ser acessado.

data: Corpo da requisição (caso a API aceite DELETE com corpo).

queryParameters: Parâmetros da URL.

headers: Cabeçalhos HTTP personalizados.

 */
