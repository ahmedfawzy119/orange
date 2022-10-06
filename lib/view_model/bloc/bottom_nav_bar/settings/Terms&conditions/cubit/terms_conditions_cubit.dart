import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'terms_conditions_state.dart';

class TermsConditionsCubit extends Cubit<TermsConditionsState> {
  TermsConditionsCubit() : super(TermsConditionsInitial());

  static TermsConditionsCubit get(context) => BlocProvider.of(context);
}
