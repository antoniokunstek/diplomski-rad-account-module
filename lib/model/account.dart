class Account {
  String accountId;
  String accountName;
  String? accountNumber;
  String domicileCurrency;
  String accountColor;
  String amount;
  bool isActive;

  Account({
    required this.accountId,
    required this.accountName,
    required this.accountNumber,
    required this.domicileCurrency,
    required this.accountColor,
    required this.amount,
    required this.isActive
  });

  factory Account.fromJson(Map<String, dynamic> map) {
    return Account(accountId: map['accountId'],
        accountName: map['accountName'],
        accountNumber: map['accountNumber'],
        domicileCurrency: map['domicileCurrency'],
        accountColor: map['accountColor'],
        amount: map['amount'],
        isActive: map['isActive']);
  }
}