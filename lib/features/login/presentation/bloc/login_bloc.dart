
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/api/api_manager.dart';
import '../../../../core/error/failuers.dart';
import '../../../product_list/presentation/bloc/product_list_bloc.dart';
import '../../../signup/domain/entities/UserEntity.dart';
import '../../data/data_sources/local/login_local_ds.dart';
import '../../data/data_sources/local/login_local_ds_impl.dart';
import '../../data/data_sources/remote/login_remote_ds_impl.dart';
import '../../data/data_sources/remote/remote_ds.dart';
import '../../data/repositories/login_repo_impl.dart';
import '../../domain/repositories/login_repo.dart';
import '../../domain/use_cases/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  static LoginBloc get(context) => BlocProvider.of(context);

  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      if (event is LoginButtonEvent) {
        emit(state.copyWith(screenStatus: ScreenStatus.loading));
        ApiManager apiManager = ApiManager();
        LoginRemoteDS loginRemoteDS = LoginRemoteDSImpl(apiManager);
        LoginLocalDS localDS = LoginLocalDSImpl();
        LoginRepo loginRepo = LoginRepoImpl(loginRemoteDS, localDS);
        LoginUseCase loginUseCase = LoginUseCase(loginRepo);

        var result = await loginUseCase.call("sra@gmail.com", "sama@123");
        result.fold((l) {
          emit(
              state.copyWith(screenStatus: ScreenStatus.failures, failures: l));
        }, (r) {
          emit(state.copyWith(
              userEntity: r, screenStatus: ScreenStatus.successfully));
        });
      }
    });
  }
}
