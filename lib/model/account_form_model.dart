class AccountFormModel {
  String accountName;
  String? accountNumber;

  AccountFormModel({
    required this.accountName
  });

  static Map<String, dynamic> toJson(AccountFormModel model) {
    return {
      'accountName':  model.accountName,
      'accountNumber': model.accountNumber,
      'domicileCurrency': 'EURO',
      'accountColor': '#ffffff'
    };
  }
}