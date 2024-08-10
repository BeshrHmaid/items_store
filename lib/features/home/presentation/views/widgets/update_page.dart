import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/functions/show_snack_bar.dart';
import 'package:flutter_application_1/core/widgets/custom_button.dart';
import 'package:flutter_application_1/core/widgets/custom_text_field.dart';
import 'package:flutter_application_1/features/home/data/models/item_model.dart';
import 'package:go_router/go_router.dart';

class UpdatePage extends StatefulWidget {
  UpdatePage({super.key, required this.itemModel});

  ItemModel itemModel;
  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  bool updateButtonpressed = false;
  String? name;
  String? price;
  String? desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Page'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: updateButtonpressed == false
              ? Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    CustomFromTextField.CustomTextField(
                      hint: widget.itemModel.name,
                      onChanged: (data) {
                        name = data;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomFromTextField.CustomTextField(
                      hint: widget.itemModel.price,
                      onChanged: (data) {
                        price = data.toString();
                      },
                      inputType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomFromTextField.CustomTextField(
                      hint: widget.itemModel.description,
                      onChanged: (data) {
                        desc = data;
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                      textColor: Colors.white,
                      backgroundColor: Colors.blue,
                      text: 'Update item',
                      function: () {
                        setState(() {
                          updateButtonpressed = true;
                        });
                        widget.itemModel.price = price!;
                        widget.itemModel.name = name!;
                        widget.itemModel.description = desc!;
                        setState(() {
                          updateButtonpressed = false;
                        });
                        GoRouter.of(context).pop();
                        showSnackBar(
                            context, 'item updated successfully', Colors.green);
                      },
                    )
                  ],
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
