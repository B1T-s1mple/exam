class RegisterRequest {
  final String name;
  final String email;
  final String password;

  const RegisterRequest({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {"name": name, "email": email, "password": password};
  }
}

class LoginRequest {
  final String email;
  final String password;

  const LoginRequest({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {"email": email, "password": password};
  }
}

class OtpRequest {
  final String email;
  final String otp;

  OtpRequest({required this.email, required this.otp});

  Map<String, dynamic> toJson() {
    return {"email": email, "otp": otp};
  }
}

class ResetRequest {
  final String email;
  final String new_password;

  ResetRequest({required this.email, required this.new_password});

  Map<String, dynamic> toJson() {
    return {"email": email, "new_password": new_password};
  }
}

class ForgotRequest {
  final String email;

  ForgotRequest({required this.email, });

  Map<String, dynamic> toJson() {
    return {"email": email};
  }
}

class HomeResponse {
  final int accountBalance;
  final int income;
  final int expenses;
  final List<Transaction> recentTransactions;

  HomeResponse({
    required this.accountBalance,
    required this.income,
    required this.expenses,
    required this.recentTransactions,
  });

  factory HomeResponse.fromJson(Map<String, dynamic> json) {
    return HomeResponse(
      accountBalance: json['account_balance'] ?? 0,
      income: json['income'] ?? 0,
      expenses: json['expenses'] ?? 0,
      recentTransactions:
          (json['recent_transactions'] as List?)
              ?.map((i) => Transaction.fromJson(i))
              .toList() ??
          [],
    );
  }
}

class Transaction {
  final String category;
  final String description;
  final int amount;
  final String time;
  final String type;

  Transaction({
    required this.category,
    required this.description,
    required this.amount,
    required this.time,
    required this.type,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      category: json['category'] ?? '',
      description: json['description'] ?? '',
      amount: json['amount'] ?? 0,
      time: json['time'] ?? '',
      type: json['type'] ?? '',
    );
  }
}
