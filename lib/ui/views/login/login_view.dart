import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:validators/validators.dart';

import '../../../generated/l10n.dart';
import '../../shared/ui_helpers.dart';
import '../../widgets/busy_button.dart';
import 'login_viewmodel.dart';

class LoginView extends HookWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    final _formKey = useMemoized(() => GlobalKey<FormBuilderState>());
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => WillPopScope(
        onWillPop: () => model.handleBack(),
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/mib_cover.jpg'),
                verticalSpaceMedium,
                if (model.validationMessage != null)
                  Text(
                    model.validationMessage!,
                    style: TextStyle(color: Theme.of(context).errorColor),
                    textAlign: TextAlign.center,
                  ),
                FormBuilder(
                  key: _formKey,
                  autovalidateMode: model.autovalidateMode,
                  child: Column(
                    children: [
                      FormBuilderTextField(
                          name: 'email',
                          decoration: InputDecoration(labelText: s.email),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) => isNull(value)
                              ? s.emailIsRequired
                              : !isEmail(value!)
                                  ? s.emailIsInvalid
                                  : null),
                      FormBuilderTextField(
                        name: 'password',
                        decoration: InputDecoration(
                          labelText: s.password,
                          suffix: GestureDetector(
                            onTap: () => model.togglePasswordVisibility(),
                            child: Icon(model.isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !model.isPasswordVisible,
                        validator: (value) =>
                            isNull(value) ? s.passwordIsRequired : null,
                      ),
                    ],
                  ),
                ),
                verticalSpaceMedium,
                BusyButton(
                  title: s.login,
                  busy: model.isBusy,
                  width: 200,
                  onPressed: () {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.validate()) {
                      model.login(
                        _formKey.currentState!.value['email'],
                        _formKey.currentState!.value['password'],
                      );
                    } else {
                      model.setAutovalidateModeAlways();
                    }
                  },
                ),
                TextButton(
                  onPressed: () {
                    model.navigateToSignup();
                  },
                  child: Text(s.dontHaveAnAccount),
                )
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
