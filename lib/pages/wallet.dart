import 'package:_summit_homes/widget/widget_support.dart';
import 'package:flutter/material.dart';
import 'package:paystack_manager_package/paystack_manager_package.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            elevation: 2.0,
            child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text(
                    'W A L L E T ',
                    style: Appwidget.headerTextfieldStyle(),
                  ),
                )),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Color(0xFFF2F2F2)),
            child: Row(
              children: [
                Image.asset(
                  'images/wallet.png',
                  height: 60,
                  width: 60,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'YOUR WALLET',
                      style: Appwidget.semilightTextfieldStyle(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        'KES 5000',
                        style: Appwidget.pricelightTextfieldStyle(),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Add Money',
              style: Appwidget.boldTextfieldStyle(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE9E2E2)),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'KES 500',
                  style: Appwidget.pricelightTextfieldStyle(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE9E2E2)),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'KES 1000',
                  style: Appwidget.pricelightTextfieldStyle(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE9E2E2)),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'KES 2000',
                  style: Appwidget.pricelightTextfieldStyle(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE9E2E2)),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'KES 3000',
                  style: Appwidget.pricelightTextfieldStyle(),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding: const EdgeInsets.symmetric(vertical: 12),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: const Color(
                  0xFF008080,
                ),
                borderRadius: BorderRadius.circular(12)),
            child: const Center(
                child: Text(
              'A D D  M O N E Y',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )),
          )
        ],
      ),
    ));
  }

  //secret key sk_test_88a941a3b12556b89ca27c08c75a37d73e804a
  void _checkPayment() {
    try {
      PaystackPayManager(
          context: context,
          secretKey: ' sk_test_88a941a3b12556b89ca27c08c75a37d73e804a',
          reference: DateTime.now().millisecondsSinceEpoch.toString(),
          amount: 10,
          country: 'Kenya',
          currency: 'KSH',
          email: 'kimleb64@gmail.com',
          firstName: 'caleb',
          lastName: 'Kimutai',
          onSuccessful: _onPaymentSuccessful,
          onPending: _onPaymentPending,
          onFailed: _onPaymentFailed,
          onCancelled: _onPaymentCancelled,
          companyAssetImage: Image.asset('images/wallet.png'),
          metadata: {
            'custom fields': [
              {
                'value': 'Kimleb ',
                'display_name': 'Payment_to'
                    'variable_name'
                    'Payment_to'
              }
            ]
          });
    } catch (error) {
      print('Payment Error ==> $error');
    }
  }

  void _onPaymentSuccessful(Transaction transaction) {
    print('Transaction Successful');
    print(
        'Transaction Message ==> ${transaction.message}.Ref ${transaction.referenceNumber}');
  }

  void _onPaymentPending(Transaction transaction) {
    print('Transaction Pending');
    print(
        'Transaction Ref ${transaction.referenceNumber}');
  }

  void _onPaymentFailed(Transaction transaction) {
    print('Transaction Failed');
    print(
        'Transaction Message ==> ${transaction.message}');
  }

  void _onPaymentCancelled(Transaction transaction) {
    print(
        'Transaction Cancelled');
  }
}
