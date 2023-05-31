import 'package:flutter/material.dart';
import 'package:pinput/extension/build_context_ext.dart';


class CodeConfirmPage extends StatelessWidget {
  const CodeConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: context.height * 0.2,
                        ),
                        Text(
                          "Confirmation code",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: context.height * 0.02),
                          child: Pinput(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            length: 5,
                            defaultPinTheme: PinTheme(
                              textStyle:
                                  Theme.of(context).textTheme.displaySmall,
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F4F4),
                                border:
                                    Border.all(color: const Color(0xffE4E4E4)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            focusedPinTheme: PinTheme(
                              textStyle: const TextStyle(color: Colors.white),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xff5663A6),
                                border:
                                    Border.all(color: const Color(0xffE4E4E4)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            androidSmsAutofillMethod:
                                AndroidSmsAutofillMethod.smsRetrieverApi,
                            keyboardType: TextInputType.number,
                            pinputAutovalidateMode:
                                PinputAutovalidateMode.onSubmit,
                            useNativeKeyboard: true,
                          ),
                        )
                      ],
                    )),
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                 
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Resend the code",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall,
                                    )
                                  ],
                                )),
                            Countdown(
                              controller: controller,
                              seconds: 90,
                              build: (BuildContext context, double time) =>
                                  Text(time.toString()),
                              interval: const Duration(milliseconds: 100),
                              onFinished: () {
                                debugPrint('Timer is done!');
                              },
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
            child: Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                         
                        },
                        child: const Text("next")))
              ],
            ),
          ),
        );
      }
    
  }

