import 'package:intl/intl.dart'; 

class TFormatter{
  
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'vi_VN', symbol: 'đ').format(amount);
  }

  static String formatPhoneNumber(String phone) {
    phone = phone.replaceAll(RegExp(r'[^0-9]'), '');// Loại bỏ khoảng trắng hoặc ký tự không phải số
    if (phone.startsWith('84')) {
      phone = '0${phone.substring(2)}';// Nếu bắt đầu bằng '84' -> chuyển thành '0'
    }
    if (phone.length == 10) {// Nếu đủ 10 số: định dạng 4-3-3 (VD: 0987 654 321)
      return '${phone.substring(0, 4)} ${phone.substring(4, 7)} ${phone.substring(7)}';
    }
    if (phone.length == 11) {// Nếu đủ 11 số: định dạng 4-3-4
      return '${phone.substring(0, 4)} ${phone.substring(4, 7)} ${phone.substring(7)}';
    }
    return phone; // Trả về gốc nếu không khớp
  }

  static String internationalFormatPhoneNumber(String phoneNumber){
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'),'');

    String contryCode = '+${digitsOnly.substring(0,2)}';
    digitsOnly = digitsOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($contryCode)');

    int i=0;
    while(i<digitsOnly.length){
      int groupLength = 2;
      if( i==0 && contryCode == '+1'){
        groupLength = 3;
      }
      int end = i+groupLength;
      formattedNumber.write(digitsOnly.substring(i,end));
      
      if( end < digitsOnly.length){
        formattedNumber.write(' ');
      }
      i=end;
    }
    return formattedNumber.toString();
  }
}