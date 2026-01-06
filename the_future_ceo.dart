class BankAccount {
  String namaPemilik;
  double _saldo;

  BankAccount(this.namaPemilik, this._saldo);


  double get saldo => _saldo;

  void setorSaldo(double jumlah) {
    print('Saldo awal : Rp ${_saldo}');

    _saldo += jumlah;
    print('Setor Tunai : Rp ${jumlah} -> Sukses!');
    print('Saldo sekarang: Rp ${_saldo}');
    print("--------------------");
  }

  void tarikSaldo(double jumlah) {
    if (jumlah > _saldo) {
      print(
        'GAGAL : maaf, saldo kamu kurang Rp ${jumlah - _saldo} lagi nih',
      );
      print("--------------------");
    } else {
      print('Saldo awal : Rp ${_saldo}');

      _saldo -= jumlah;
      print('Tarik tunai : Rp ${jumlah} -> Sukses!');
      print('Saldo sekarang: Rp ${_saldo}');
      print("--------------------");
    }
  }

  void cekSaldo(){
    print('Saldo sekarang: Rp ${_saldo}');
  }
}

void main() {
  var myAccount = BankAccount("dim", 200000);
  myAccount.tarikSaldo(1000);
  myAccount.setorSaldo(33000);
  myAccount.cekSaldo();
}
