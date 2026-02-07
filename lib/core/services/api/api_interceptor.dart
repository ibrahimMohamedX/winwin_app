import 'package:WinWin/core/services/api/api_helper.dart';
import 'package:WinWin/core/services/cache/cache_helper.dart';
import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    //! need to check api before use
    options.headers[ApiKeys.token] =
        CacheHelper.getData(key: ApiKeys.token) != null
        ? 'FOODAPI ${CacheHelper.getData(key: ApiKeys.token)}' //! need to check api before use
        : null; // here you sent the headers its api asked for
    super.onRequest(options, handler);
  }
}
