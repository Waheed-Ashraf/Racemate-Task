import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/manager/explore_cubit/explore_cubit.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  late final TextEditingController _myController;
  @override
  void initState() {
    _myController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _myController,
      onSubmitted: (value) {
        if (value == "") {
          BlocProvider.of<ExploreCubit>(context).fitchAllExploreRaces();
        } else {
          BlocProvider.of<ExploreCubit>(context)
              .fitchAllSearchedRaces(raceNameOrCountry: value);
        }
      },
      style: TextStyle(height: 1.0, color: ColorPallet.primaryColor),
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search Race Name Or Country',
        hintStyle: AppStyles.styleTitleSemiBold16,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: IconButton(
            onPressed: () {
              if (_myController.text == "") {
                BlocProvider.of<ExploreCubit>(context).fitchAllExploreRaces();
              } else {
                BlocProvider.of<ExploreCubit>(context).fitchAllSearchedRaces(
                    raceNameOrCountry: _myController.text);
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
