class BankAccount {
  String _accountNumber;
  double _balance;
  String _accountHolder;
  
  BankAccount(this._accountNumber, this._accountHolder, this._balance);
  
  double get balance => _balance;
  String get accountHolder => _accountHolder;
  
  set accountHolder(String name){
    if (name.isNotEmpty){
      _accountHolder = name;
    }
  }
  
  void deposit(double amount){
    if (amount > 0){
      _balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
      print('New balance: \$${_balance.toStringAsFixed(2)}');
  } else {
  print('Invalid depost amount');
  }
}

bool withdraw(double amount){
  if (amount > 0 && amount <= _balance){
    print('Withdrawn: \$${amount.toStringAsFixed(2)}');
    print('New Balance: \$${_balance.toStringAsFixed(2)}');
    return true;
  } else {
    print('Insufficient funds or invalid amount');
    return false;
  }
}
  
  void displayAccountInfo(){
    print('Account: $_accountNumber');
    print('Holder: $_accountHolder');
    print('Balance: \$${_balance.toStringAsFixed(2)}');
  }
}

void main(){
  var account = BankAccount('ACC12345', 'John Foe', 1000);
  print ('Balance: ${account.balance}');
  
  account.deposit(500);
  account.withdraw(200);
  account.withdraw(2000);
  
  account.displayAccountInfo();
}
  
