import 'package:eventera/core/api_config/client/api_client.dart';
import 'package:eventera/core/api_config/endpoints/api_endpoint.dart';
import 'package:eventera/core/utils/logger.dart';
import 'package:eventera/models/auth_model/signin_model.dart';

class AuthRepository {
  final ApiClient apiClient;

  AuthRepository(this.apiClient);

  Future<SignInModel> signInUser({required Map<String, dynamic> data}) async {
    try {
      final response = await apiClient
          .request(RequestType.POST, ApiEndPoint.signInUserUrl, data: data);
      return SignInModel.fromJson(response);
    } catch (error) {
      Logger.lOG("Problem is in 'signInUser' Error : ${error.toString()}");
      rethrow;
    }
  }
}
