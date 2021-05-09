import 'package:crowd_sourcing/ui/views/signup/personal_info/personal_info_widgetmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:validators/validators.dart';

import '../../../../generated/l10n.dart';
import '../../../shared/ui_helpers.dart';

class PersonalInfoWidget extends HookWidget {
  final Function onSubmit;

  PersonalInfoWidget({required this.onSubmit});
  @override
  Widget build(BuildContext context) {
    final _formKey = useMemoized(() => GlobalKey<FormBuilderState>());
    return ViewModelBuilder<PersonalInfoWidgetModel>.reactive(
      builder: (context, model, child) => FormBuilder(
        key: _formKey,
        autovalidateMode: model.autovalidateMode,
        child: Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormBuilderTextField(
                name: 'name',
                decoration: InputDecoration(labelText: S.current.name),
                validator: (value) =>
                    isNull(value) ? S.current.nameIsRequired : null,
              ),
              FormBuilderTextField(
                name: 'email',
                decoration: InputDecoration(labelText: S.current.email),
                keyboardType: TextInputType.emailAddress,
                validator: (value) => isNull(value)
                    ? S.of(context).emailIsRequired
                    : !isEmail(value!)
                        ? S.of(context).emailIsInvalid
                        : null,
              ),
              FormBuilderTextField(
                name: 'password',
                decoration: InputDecoration(
                  labelText: S.current.password,
                  suffix: GestureDetector(
                    onTap: () => model.togglePasswordVisibility(),
                    child: Icon(model.isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                ),
                obscureText: !model.isPasswordVisible,
                validator: (value) => isNull(value)
                    ? S.current.passwordIsRequired
                    : !isLength(value!, 6)
                        ? S.current.passwordShouldBeLong(6)
                        : null,
              ),
              FormBuilderTextField(
                name: 'phone',
                decoration: InputDecoration(labelText: S.current.phone),
                keyboardType: TextInputType.phone,
                validator: (value) =>
                    isNull(value) ? S.current.phoneIsRequired : null,
              ),
              FormBuilderTextField(
                name: 'designation',
                decoration: InputDecoration(labelText: S.current.designation),
                validator: (value) =>
                    isNull(value) ? S.current.designationIsRequired : null,
              ),
              verticalSpaceMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.save();
                      if (_formKey.currentState!.validate()) {
                        onSubmit(_formKey.currentState!.value);
                      } else {
                        model.setAutovalidateModeAlways();
                      }
                    },
                    child: Text(S.current.next),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => PersonalInfoWidgetModel(),
    );
  }
}
