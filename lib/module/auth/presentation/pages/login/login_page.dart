import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_pos/core/component/button/design_button.dart';
import 'package:general_pos/core/component/image/design_image.dart';
import 'package:general_pos/core/component/snackbar/snackbar_widget.dart';
import 'package:general_pos/core/component/textfield/design_textfield.dart';
import 'package:general_pos/core/constant/bloc/bloc_status.dart';
import 'package:general_pos/core/constant/network/failure.dart';
import 'package:general_pos/core/extensions/build_context_ext.dart';
import 'package:general_pos/core/route/app_route_name.dart';
import 'package:general_pos/core/theme/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:general_pos/core/theme/app_radius.dart';
import 'package:general_pos/core/utils/app_utils.dart';
import 'package:general_pos/module/auth/presentation/pages/login/cubit/login_cubit.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(di()),
      child: const LoginUI(),
    );
  }
}

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  final formKey = GlobalObjectKey("login_form_key");

  String errorMessageFromFailure(Failure failure) {
    if (failure is UserNotFoundFailure) {
      return context.intl.user_not_found;
    }
    if (failure is UserInactiveFailure) {
      return context.intl.user_inactive;
    }
    if (failure is WrongPasswordFailure) {
      return context.intl.password_incorrect;
    }
    return failure.message ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (p, c) => p.status != c.status,
      listener: (context, state) {
        if (state.status == BlocStatus.success && state.user != null) {
          context.goNamed(AppRouteName.home);
        }
        if (state.status == BlocStatus.error && state.failure != null) {
          showSnackbar(
            context,
            type: SnackbarType.error,
            message: errorMessageFromFailure(state.failure!),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Builder(
            builder: (context) {
              if (context.isMobileSize) {
                return SafeArea(
                  child: SingleChildScrollView(
                    padding: AppPadding.responsive(context),
                    child: Column(
                      spacing: 24,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 86),
                          child: LoginContent(),
                        ),
                        LoginForm(key: formKey),
                      ],
                    ),
                  ),
                );
              }

              return LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                      ),
                      child: Padding(
                        padding: AppPadding.responsive(context),
                        child: Row(
                          spacing: 64,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: context.isMobileSize ? 3 : 6,
                              child: const LoginContent(),
                            ),
                            Flexible(
                              flex: context.isMobileSize ? 7 : 4,
                              child: LoginForm(key: formKey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: DesignImage(
        PngAssets("assets/image/img_coffee_bar.jpg"),
        borderRadius: AppRadius.large,
        fit: BoxFit.cover,
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Login", style: Theme.of(context).textTheme.headlineMedium),
        DesignTextfield(
          textEditingController: usernameController,
          labelText: context.intl.username,
          hintText: context.intl.enter_username,
          maxLines: 1,
          textInputAction: TextInputAction.next,
        ),
        DesignTextfield(
          textEditingController: passwordController,
          labelText: context.intl.password,
          hintText: context.intl.enter_password,
          obscureText: true,
          maxLines: 1,
        ),
        DesignButton(
          size: DesignButtonSize.large,
          text: context.intl.login,
          onPressed: () {
            context.read<LoginCubit>().login(
              usernameController.text.trim(),
              passwordController.text.trim(),
            );
          },
        ),
      ],
    );
  }
}
