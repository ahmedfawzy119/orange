import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/view/components/orange_title.dart';
import 'package:orange_workshop/view/components/setting/back_icon.dart';
import 'package:orange_workshop/view/components/setting/our_partner/our_partner_card.dart';

import '../../../../view_model/bloc/bottom_nav_bar/settings/our_partners/cubit/our_partners_cubit.dart';

class OurPartners extends StatelessWidget {
  const OurPartners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OurPartnersCubit(),
      child: BlocConsumer<OurPartnersCubit, OurPartnersState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: BackIcon(),
              title: Text(
                'Our Partners',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OurPartnerCard(),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
