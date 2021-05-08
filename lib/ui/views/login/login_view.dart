import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:validators/validators.dart';

import '../../../generated/l10n.dart';
import '../../shared/ui_helpers.dart';
import '../../widgets/busy_button.dart';
import 'login_view.form.dart';
import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password', isPassword: true),
])
class LoginView extends StatelessWidget with $LoginView {
  final _formKey = GlobalKey<FormState>();

  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
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
                Form(
                  key: _formKey,
                  autovalidateMode: model.autovalidateMode,
                  child: Column(
                    children: [
                      TextFormField(
                          decoration:
                              InputDecoration(labelText: S.current.email),
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) => isNull(value)
                              ? S.of(context).emailIsRequired
                              : !isEmail(value!)
                                  ? S.of(context).emailIsInvalid
                                  : null),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: S.of(context).password,
                          suffix: GestureDetector(
                            onTap: () => model.togglePasswordVisibility(),
                            child: Icon(model.isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !model.isPasswordVisible,
                        validator: (value) => isNull(value)
                            ? S.of(context).passwordIsRequired
                            : null,
                      ),
                    ],
                  ),
                ),
                verticalSpaceMedium,
                BusyButton(
                  title: S.of(context).login,
                  busy: model.isBusy,
                  width: 200,
                  onPressed: () {
                    model.navigateToSignup();
                    // if (_formKey.currentState!.validate()) {
                    //   model.login();
                    // } else {
                    //   model.setAutovalidateModeAlways();
                    // }
                  },
                ),
                TextButton(
                  onPressed: () {
                    model.navigateToSignup();
                  },
                  child: Text(S.current.dontHaveAnAccount),
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
