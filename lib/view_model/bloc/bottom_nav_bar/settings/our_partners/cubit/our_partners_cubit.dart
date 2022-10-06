import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'our_partners_state.dart';

class OurPartnersCubit extends Cubit<OurPartnersState> {
  OurPartnersCubit() : super(OurPartnersInitial());

  static OurPartnersCubit get(context) => BlocProvider.of(context);
}
