void main(){
  var list = [1, 2, 3];
  // var nim = '2141720236';
var list2 = [0, ...list];
print(list);
print(list2);
print(list2.length);

var list1 = [1, 2, null];
print(list1);
var list3 = [0, ...list1];
print(list3.length);

var nim = ["2141720236", ...list3];
print(nim);

var login = 'Operator';
var nav2 = ['home', 'furniture', 'plants', if(login case 'manager') 'Invetory'];
print(nav2);

var listOfints = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfints) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
}

