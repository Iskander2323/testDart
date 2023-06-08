import 'dart:io';

 numberLong11(String x){
 var response = '+7' + '-(' + x.substring(1,4) + ')-' + x.substring(4,7) + '-' + x.substring(7,9) + '-' +x.substring(9,11);
return response;
}
 numberLong10(String x){
 var response = '+7' + '-(' + x.substring(0,3) + ')-' + x.substring(3,6) + '-' + x.substring(6,8) + '-' +x.substring(8,10);
return response;
}
numberLong12(String x){
 var response = '+7' + '-(' + x.substring(2,5) + ')-' + x.substring(5,8) + '-' + x.substring(8,10) + '-' +x.substring(10,12);
return response;
}


void main() {
  print('Enter your number: ');
  var x = stdin.readLineSync() ?? '0';
  var first = x[0];

 //print(x.substring(2, 5));
 //77059943878
 //+77059943878
 //87059943878
 //7059943878 
  if(x.length >= 10){
    
  switch(first){
   case '8': 
        var answer = numberLong11(x);
        print(answer);
        break;
   case '7': 
        if(x.length == 11){
        var answer = numberLong11(x);
        print(answer);
        } else if(x.length ==10){
        var answer = numberLong10(x);
        print(answer);
        }
        break;
    case '+':
        var answer = numberLong12(x);
        print(answer);
        break;
    default:
    print('Uncorrect number for KZ/RU region');
  }
  } else  {
   print('The number is not long enough!');
  }

  
}
