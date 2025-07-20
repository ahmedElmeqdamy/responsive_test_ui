

class TransactionModel {
  final String title, subTitle, amount;
  final bool withdrawal;

  const TransactionModel({
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.withdrawal,
  });
}
