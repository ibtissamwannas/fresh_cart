import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/widgets/custom_text_form_field.dart';
import 'package:fresh_cart/features/checkout/domain/entities/order_entity.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({
    super.key,
    required this.formKey,
    required this.valueListenable,
  });

  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> valueListenable;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        builder: (context, value, child) {
          return Form(
            key: formKey,
            autovalidateMode: value,
            child: Column(
              children: [
                verticalSpace(24),
                CustomTextFormField(
                  onSaved: (value) {
                    context
                        .read<OrderInputEntity>()
                        .shippingAddressEntity!
                        .name = value!;
                  },
                  hintText: 'الاسم كامل',
                  keyboardType: TextInputType.text,
                ),
                verticalSpace(16),
                CustomTextFormField(
                  onSaved: (value) {
                    context
                        .read<OrderInputEntity>()
                        .shippingAddressEntity!
                        .email = value!;
                  },
                  hintText: 'البريد الإلكتروني',
                  keyboardType: TextInputType.text,
                ),
                verticalSpace(16),
                CustomTextFormField(
                  onSaved: (value) {
                    context
                        .read<OrderInputEntity>()
                        .shippingAddressEntity!
                        .address = value!;
                  },
                  hintText: 'العنوان',
                  keyboardType: TextInputType.text,
                ),
                verticalSpace(16),
                CustomTextFormField(
                  onSaved: (value) {
                    context
                        .read<OrderInputEntity>()
                        .shippingAddressEntity!
                        .city = value!;
                  },
                  hintText: 'المدينه',
                  keyboardType: TextInputType.text,
                ),
                verticalSpace(16),
                CustomTextFormField(
                  onSaved: (value) {
                    context
                        .read<OrderInputEntity>()
                        .shippingAddressEntity!
                        .floor = value!;
                  },
                  hintText: 'رقم الطابق , رقم الشقه ..',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  onSaved: (value) {
                    context
                        .read<OrderInputEntity>()
                        .shippingAddressEntity!
                        .phone = value!;
                  },
                  hintText: 'رقم الهاتف',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          );
        },
        valueListenable: valueListenable,
      ),
    );
  }
}
