import 'package:architecture_template/product/service/manager/index.dart';
import 'package:gen/src/model/user.dart';
import 'package:vexana/vexana.dart';

final class LoginService {
  LoginService(INetworkManager<EmptyModel> networkManager)
      : _networkManager = networkManager;

  final INetworkManager<EmptyModel> _networkManager;

  Future<List<User>> users() async {
    final response = await _networkManager.send<User, List<User>>(
      ProductServicePath.posts.value,
      parseModel: User(),
      method: RequestType.GET,
    );

    return response.data ?? [];
  }
}
