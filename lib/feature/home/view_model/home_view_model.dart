import 'package:architecture_template/feature/home/view_model/state/home_view_state.dart';
import 'package:architecture_template/product/service/interface/authentication_operation.dart';
import 'package:architecture_template/product/state/base/base_cubit.dart';

final class HomeViewModel extends BaseCubit<HomeViewState> {
  HomeViewModel({required AuthenticationOperation operationService})
      : _authenticationOperationService = operationService,
        super(const HomeViewState(isLoading: false));

  late final AuthenticationOperation _authenticationOperationService;
  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  Future<void> fetchUsers() async {
    final response = await _authenticationOperationService.users();
    emit(state.copyWith(users: response));
  }
}
