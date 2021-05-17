/*
DF0045 Number Conversion app
by Alexander Abraham a.k.a.
"The Black Unicorn".
Licensed under the MIT license.
*/

import 'package:harpo/harpo.dart';

bool isBinary(String binaryNumber){
  bool result = false;
  if (int.tryParse(binToDec(binaryNumber)) is int){
    result = true;
  } else {}
  return result;
}

bool isHex(String hexNumber){
  bool result = false;
  if (hexToDec(hexNumber) is int){
    result = true;
  } else {}
  return result;
}

String convertBinaryToDecimal(String binary){
  return binToDec(binary).toString();
}

String convertHexadecimalToDecimal(String hex){
  return hexToDec(hex).toString();
}

String convertDecimalToBinary(String decimal){
  return decToBin(int.parse(decimal));
}
