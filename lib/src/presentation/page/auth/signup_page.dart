import 'package:caferat_app/src/common/constants/double_constant.dart';
import 'package:caferat_app/src/common/enum/request_state_enum.dart';
import 'package:caferat_app/src/common/popup/app_toast.dart';
import 'package:caferat_app/src/common/routes/app_routes.dart';
import 'package:caferat_app/src/presentation/bloc/register/register_form_bloc.dart';
import 'package:caferat_app/src/presentation/widgets/custom_text_form_field.dart';
import 'package:caferat_app/src/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
      listener: (context, state) {
        if (state.state == RequestState.loaded) {}
        if (state.state == RequestState.error) {
          AppToast.show(
            msg: state.message,
            backgroundColor: Colors.red,
            textColor: Colors.white,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: DoubleConstant.defaultMargin,
              ),
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 50),
                      _buildHeader(context),
                      const SizedBox(height: DoubleConstant.spacing24),
                      CustomTextFormField(
                        hintText: 'Email',
                        textFieldType: TextFieldType.email,
                        prefixIcon: const Icon(Icons.mail),
                        onChanged: (v) {
                          context.read<RegisterFormBloc>().add(
                            RegisterFormEvent.emailOnChanged(v),
                          );
                        },
                      ),
                      const SizedBox(height: DoubleConstant.spacing16),
                      CustomTextFormField(
                        obscureText: _obscureText,
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(
                            _obscureText
                                ? FontAwesomeIcons.eye
                                : FontAwesomeIcons.eyeSlash,
                          ),
                        ),
                        onChanged: (v) {
                          context.read<RegisterFormBloc>().add(
                            RegisterFormEvent.passwordOnChanged(v),
                          );
                        },
                      ),
                      const SizedBox(height: DoubleConstant.spacing24),
                      _buildForgotPassword(context),
                      const SizedBox(height: DoubleConstant.spacing24),
                      PrimaryButton(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<RegisterFormBloc>().add(
                              const RegisterFormEvent.registerWithEmail(),
                            );
                          }
                        },
                        isLoading: (state.state == RequestState.loading)
                            ? true
                            : false,
                        labelLoading: 'Registering...',
                        label: 'Register',
                      ),
                      const SizedBox(height: DoubleConstant.spacing24),
                      _buildDivider(context),
                      const SizedBox(height: DoubleConstant.spacing12),
                      _buildOtherSignOption(context),
                      const SizedBox(height: DoubleConstant.spacing12),
                      _buildRegisterButton(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Logo',
            style: GoogleFonts.pacifico(
              fontSize: 40,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: DoubleConstant.spacing12),
          Text(
            'Register',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: DoubleConstant.spacing4),
          Text(
            'Create your account',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildForgotPassword(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () {
          // Navigator.pushNamed(
          //   context,
          //   FORGOT_PASSWORD,
          // );
        },
        child: Text(
          'Forgot Password?',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }

  Widget _buildDivider(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            width: double.infinity,
            height: .5,
            color: theme.disabledColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text('Or sign in with', style: theme.textTheme.bodySmall),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: .5,
            color: theme.disabledColor,
          ),
        ),
      ],
    );
  }

  Widget _buildOtherSignOption(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: theme.primaryColor.withAlpha(200),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            FontAwesomeIcons.google,
            size: 30,
            color: Colors.white,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: theme.primaryColor.withAlpha(200),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            FontAwesomeIcons.apple,
            size: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Don\'t have an account?',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(width: DoubleConstant.spacing8),
        GestureDetector(
          onTap: () {
            context.goNamed(AppRoutes.LOGIN_ROUTE_NAME);
          },
          child: Text(
            'Register',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
