import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:learnfy/core/helper_functions/validator.dart';
import 'package:learnfy/core/widgets/primary_button.dart';
import 'package:learnfy/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:learnfy/features/auth/presentation/widgets/auth_text_form_field.dart';
import 'package:learnfy/features/auth/presentation/widgets/custom_check_box.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/assets.dart';
import '../../../../core/helper_functions/custom_app_bar.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController userNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: CustomAppBar(title: 'New Account'),
      body: BlocProvider(
        create: (context) => SignUpCubit(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(height: 16.0),
                    AuthTextFormField(
                      label: 'Full Name',
                      validator: (username) => validateUsername(username!),
                      controller: userNameController,
                    ),
                    SizedBox(height: 16.0),
                    AuthTextFormField(
                      label: 'Email',
                      validator: (email) => validateEmail(email!),
                      controller: emailController,
                    ),
                    SizedBox(height: 16.0),
                    BlocBuilder<SignUpCubit, SignUpState>(
                      builder: (context, state) {
                        return AuthTextFormField(
                          onSuffixIconTap: () => context
                              .read<SignUpCubit>()
                              .togglePasswordVisible(),
                          label: 'Password',
                          suffixIcon: state.isPasswordVisible
                              ? Assets.eyeSlashIcon
                              : Assets.eyeIcon,
                          obscureText: !state.isPasswordVisible,
                          validator: (password) => validatePassword(password!),
                          controller: passwordController,
                        );
                      },
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: [
                        BlocBuilder<SignUpCubit, SignUpState>(
                          builder: (context, state) {
                            return CustomCheckbox(
                              value: state.isTermAccepted,
                              onChanged: (value) => context
                                  .read<SignUpCubit>()
                                  .toggleTermAccept(value),
                            );
                          },
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: 'By creating an account, you agree to our ',
                              style: AppTextStyles.bodyMediumMedium,
                              children: [
                                TextSpan(
                                  text: 'Terms and Conditions.',
                                  style: AppTextStyles.bodyMediumMedium
                                      .copyWith(
                                        color: AppColors.primary90,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    PrimaryButton(
                      label: 'Create New Account',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          log('Account created successfully');
                        }
                      },
                    ),
                    SizedBox(height: 23.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do you have an account? ',
                          style: AppTextStyles.bodyLargeRegular.copyWith(
                            color: AppColors.black60,
                          ),
                        ),
                        Text(
                          'Login',
                          style: AppTextStyles.bodyLargeMedium.copyWith(
                            color: AppColors.primary90,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
