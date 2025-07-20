import 'package:flutter/material.dart';
import 'package:responsive_test_ui/views/widgets/custom_button.dart';
import 'package:responsive_test_ui/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'name please',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'email please',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hint: 'item name please',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backgroundColor: Colors.white,
                textColor: Colors.blue,
                title: 'Add more details',
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton(title: 'Send Money')),
          ],
        ),

        //
      ],
    );
  }
}
