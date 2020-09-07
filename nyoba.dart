class Bang {
  int jumlah = 0;

  String baang() => 'Tut!';

  void tut() {
    print('Bang bang Tut!');
    jumlah++;
  }

  void siapa() {
    print('Siapa yang kentut?!');
    jumlah++;
  }

  String _makan = 'nasi';

  String get makan => _makan;

  set makan(String value) {
    jumlah++;
    _makan = value;
  }

  get yuk => 'ayuk';
}

class Binatang {
  final name = 'binatang';
  String makan = 'protein';
  String minum = 'air';
  String tinggal = 'alam';
  get semua {
    Map map = {'name': name, 'makan': makan, 'minum': minum};
    return map;
  }

  Binatang tampil() {
    return this;
  }

  static Binatang baru() {
    return Binatang();
  }
}

class Kambing extends Binatang {
  final name = 'Kambing';
  String berpindah = 'kaki';
}

void ngomong({String kalimat: 'Huff'}) {
  print(kalimat);
}

void main() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }

//   var meong = ['asdf', 34];
  var meong = new List<Map<String, dynamic>>();
  print(meong);
  print(meong.runtimeType);

  var meong2 = new Map();
  meong2['makan'] = 'ikan';
  meong2['minum'] = 'air';
  meong2['main'] = 'bola';
  print(meong2);
  print(meong2.runtimeType);
  
  print(meong2.length);
  for (var mew in meong2.keys) {
    print('$mew: ' + meong2[mew]);
  }
  print('');
  
  var meong3 = meong2;
  meong3['tidur'] = 'malam';
  meong2.forEach((k, v) => print('$k: $v'));

  Bang bang = Bang();
  bang
    ..tut()
    ..siapa();
  print(bang
    ..jumlah = 9
    ..jumlah = 13);
  print(bang.jumlah);
  print(bang.baang());

  print(bang.makan);
  bang.makan = 'oat';
  print(bang.makan);

  Binatang kambing = Kambing();
  print(kambing.name);
  print(bang.yuk);
  print(kambing.semua);

  int iya = null;
  print(iya);
  ngomong(kalimat: 'Hehe');
  Kambing tampil = kambing.tampil();
  print(tampil);
  print(tampil.berpindah);

  Object apa = Kambing();
  print((apa as Kambing).semua);
  Binatang baru = Binatang.baru();
  print(baru.semua);

  print(!meong2.keys.contains('akan'));
  print({'name': String, 'id': int});
  print(1==2);
  
  List arr = [1,2,"tiga",9];
  arr.add('pow');
  for(var i in arr){
    print(i);
  }
  print(arr[-1]);
}
