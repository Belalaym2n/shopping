
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/api/api_manager.dart';
import '../../../../core/error/failuers.dart';
import '../../data/data_sources/remote/remote_ds.dart';
import '../../data/data_sources/remote/remote_ds_impl.dart';
import '../../data/models/request_data.dart';
import '../../data/repositories/signup_repo_impl.dart';
import '../../domain/entities/UserEntity.dart';
import '../../domain/repositories/signup_repo.dart';
import '../../domain/use_cases/signup_usecase.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  ApiManager apiManager;

  static SignUpBloc get(context) => BlocProvider.of(context);

  SignUpBloc(this.apiManager) : super(SignUpInitial()) {
    on<SignUpEvent>((event, emit) async {
      if (event is RegisterEvent) {
        emit(state.copyWith(screenStatus: ScreenStatus.loading));

        RemoteDataSource remoteDataSource = RemoteDataSourceImpl(apiManager);
        SignupRepo signupRepo = SignUpRepoImpl(remoteDataSource);
        SignUpUseCase signUpUseCase = SignUpUseCase(signupRepo);
        RequestData requestData = RequestData(
            name: "belal",
            email: "belal1424@gmail.com",
            password: "123@Hamouda",
            rePassword: "123@Hamouda",
            phone: "01110944558");

        var result = await signUpUseCase.call(requestData);

        result.fold((l) {
          emit(
              state.copyWith(screenStatus: ScreenStatus.failures, failures: l));
        }, (r) {
          emit(state.copyWith(
              screenStatus: ScreenStatus.successfully, userEntity: r));
        });
      }
    });
  }
}
