import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/manager/explore_cubit/explore_cubit.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({
    super.key,
  });
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      onSubmitted: (value) {
        if (value == "") {
          BlocProvider.of<ExploreCubit>(context).fitchAllExploreRaces();
        } else {
          BlocProvider.of<ExploreCubit>(context)
              .fitchAllSearchedRaces(raceNameOrCountry: value);
        }
      },
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search Race Name Or Country',
        hintStyle: AppStyles.styleTitleSemiBold16,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: IconButton(
            onPressed: () {
              if (myController.text == "") {
                BlocProvider.of<ExploreCubit>(context).fitchAllExploreRaces();
              } else {
                BlocProvider.of<ExploreCubit>(context).fitchAllSearchedRaces(
                    raceNameOrCountry: myController.text);
              }
            },
            icon: Opacity(
              opacity: .8,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
                color: ColorPallet.primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorPallet.secondBlueColor,
      ),
      borderRadius: BorderRadius.circular(
        8,
      ),
    );
  }
}
