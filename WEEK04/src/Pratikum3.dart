void main(){
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1,
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';
// mhs1['nama'] = 'Mohammad halim perdana';
// mhs1['nim'] = '2141720236';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
// mhs2[0] = 'Mohammad Halim perdana';
// mhs2[1] = "2141720236";

print(gifts);
print(nobleGases);
print(mhs1);
print(mhs2);
}