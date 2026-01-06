
void forgetfulFriend (){

  List<Map<String,dynamic>> listOfFriends = [
    {'nama': 'budi', 'ultah': '2000-01-15', 'hobi':'party'},
    {'nama': 'widi', 'ultah': null, 'hobi':'cafe hopping'},
    {'nama': 'joko', 'ultah': '1961-07-22', 'hobi':'making furniture'}
  ];

  int thisYear = DateTime.now().year;

  int counter = 0 ;

  for (int i =0;i<listOfFriends.length;i++){

    String namaTeman = listOfFriends[i]['nama'];
    String? ultahTeman = listOfFriends[i]['ultah'];


    if(ultahTeman == null || ultahTeman.isEmpty){
      print('${i+1}. Data ${namaTeman} tidak lengkap, dilewati...');
      continue;
    }


    int tahunLahir = DateTime.parse(ultahTeman).year;
    int umur = thisYear - tahunLahir ;

    int bulanLahir = DateTime.parse(ultahTeman).month;
    int bulanIni= DateTime.now().month;

    if(bulanIni == bulanLahir){
      print('${i+1}. Risers ${namaTeman} : Wah, umurnya sekarang ${umur} tahun. jangan lupa ucapin bulan ini');
      counter++;
    }

    else{
      
      print('${i+1}. Risers ${namaTeman} : Wah, umurnya sekarang ${umur} tahun. nanti ultah di bulan ${bulanLahir}');
    }

  }
  print('-------------------------------------------------------------');
  print('total ada ${counter} teman yang harus kamu hubungi bulan ini!');

}

void main(){
  forgetfulFriend();
}
