import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:ruedaz/config/theme/theme.dart';

import 'package:ruedaz/view/viewmodel/AuthViewModel/auth_viewmodel.dart';
import 'package:ruedaz/view/widgets/container_field.dart';
import '../../../di/locator.dart';
import '../../widgets/root_widget.dart';

class SignUpPage extends RootWidget<AuthViewmodel> {
  SignUpPage() : super(getIt());

  @override
  Widget widget(AuthViewmodel model, BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  constraints: constraints,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image-ruedaz-3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/ruedaz_solo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "Completa tu información",
                        style: darkTheme.textTheme.subtitle1?.copyWith(
                            fontSize: constraints.maxWidth > 150 ? 26 : 13),
                      ),
                      const SizedBox(height: 40),
                      ContainerField(
                          label: "Nombre",
                          children: [Expanded(child: TextFormField())]),
                      ContainerField(
                          label: "Apellido",
                          children: [Expanded(child: TextFormField())]),
                      ContainerField(label: "Numero de celular", children: [
                        Expanded(
                            child: CountryPickerDropdown(
                          initialValue: 'AR',
                          itemBuilder: _buildDropdownItem,
                          itemFilter: (c) =>
                              ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode),
                          priorityList: [
                            CountryPickerUtils.getCountryByIsoCode('GB'),
                            CountryPickerUtils.getCountryByIsoCode('CN'),
                          ],
                          sortComparator: (Country a, Country b) =>
                              a.isoCode.compareTo(b.isoCode),
                          onValuePicked: (Country country) {
                            print("${country.name}");
                          },
                        )),
                        Expanded(flex: 8, child: TextFormField())
                      ])
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          const SizedBox(
            width: 8.0,
          ),
          Text("+${country.phoneCode}(${country.isoCode})"),
        ],
      );
}
