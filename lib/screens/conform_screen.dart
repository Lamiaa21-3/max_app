import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class ConformScreen extends StatefulWidget {
  ConformScreen({Key? key}) : super(key: key);

  @override
  State<ConformScreen> createState() => _ConformScreenState();
}

class _ConformScreenState extends State<ConformScreen> {
  final List<String> list1 = <String>['One', 'Two', 'Three'];
  final List<String> list2 = <String>['country1', 'city', 'address'];
  final List<String> list3 = <String>['moslem', 'non-moslem', 'other'];
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override

  Widget build(BuildContext context) {

    String dropdownValue1 = list1.first;
    String dropdownValue2 = list2.first;
    String dropdownValue3 = list3.first;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Conform Order',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                children: [
                  buildTextFormField(hintText: 'Address', lines: 1),
                  Text(
                    'Adress Type',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Text(
                          'Email',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )),
                        width: 90,
                        height: 40,
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.black12,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          'Work',
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        )),
                        width: 90,
                        height: 40,
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.black12,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          'Other',
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        )),
                        width: 90,
                        height: 40,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildDropdownMenuIetm(dropdownValue1, list1),
                      buildDropdownMenuIetm(dropdownValue2, list2),
                      buildDropdownMenuIetm(dropdownValue3, list3),
                    ],
                  ),
                  Text(
                    'Zip',
                    style: TextStyle(fontSize: 18),
                  ),
                  buildTextFormField(hintText: 'Zip', lines: 1),
                  Text(
                    'Order Notes (Optional) ',
                    style: TextStyle(fontSize: 18),
                  ),
                  buildTextFormField(hintText: '', lines: 8),
                  Text(
                    'Payment Method ',
                    style: TextStyle(fontSize: 18),
                  ),
                  ListTile(
                    title: const Text(
                      'Cash on delivery ',
                      style: TextStyle(fontSize: 18),
                    ),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.lafayette,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        print('vvvvvvvvv1$value');
                        setState(() {
                          _character = value;
                          print('ccccccccccccccc$_character');
                        });
                      },
                    ),
                  ),
                  Center(
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                        ),
                        child: Text(
                    'Pay with cash upon delivert',
                    style: TextStyle(fontSize: 18),
                  ),
                      )),
                  ListTile(
                    title: const Text(
                      'PayPal',
                      style: TextStyle(fontSize: 18),
                    ),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.jefferson,
                      groupValue: _character,
                      onChanged: ( value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                        width: double.infinity,
                        color: Colors.lightGreenAccent,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Place Order',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        )),
                  )
                ]),
          ),
        ));
  }

  TextFormField buildTextFormField(
      {required String hintText, required int lines}) {
    return TextFormField(
      maxLines: lines,
      decoration: InputDecoration(
          hintText: hintText,
          labelStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }

  DropdownMenu<String> buildDropdownMenuIetm(
      String dropdownValue, List<String> list) {
    return DropdownMenu<String>(
      width: 100,
      initialSelection: list.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
