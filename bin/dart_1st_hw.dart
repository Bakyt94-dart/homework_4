void main(){
  String myName = 'Bakyt';
  int myAge = 17;
  String myCity = 'Bishkek';
  String myProfession = 'student';
  String myHobby = 'playing basketball';
  print('Hello! My name is $myName');
  print('I am $myAge years old and I live in $myCity');
  print('My profession is $myProfession');
  print('In my free time, I enjoy $myHobby');



  int mySalary = 1000;
  int yearlyIncome = mySalary * 12;
  int bonusAmount = (yearlyIncome * 0.1).toInt();
  int yearlyIncomeWithBonus = yearlyIncome + bonusAmount;
  print("My yearly income: $yearlyIncome SOM.");
  print("My yearly income with 10% bonus: $yearlyIncomeWithBonus SOM.");



  String text = " Knowledge is power, but practice makes perfect. ";
  String trimmedText = text.trim();
  print("$trimmedText");
  String upperText = trimmedText.toUpperCase();
  print("$upperText");
  String replacedText = trimmedText.replaceAll("practice", "experience");
  print("$replacedText");
  bool hasPower = trimmedText.contains("power");
  print("$hasPower");



  int apples = 10;
  int people = 4;

  int perPerson = apples ~/ people;
  int left = apples % people;

  print('Each person gets $perPerson apples.');
  print('Apples left: $left');



  int currentYear = 2026;          

  int birthYear = currentYear - myAge;

  print('I was born in $birthYear');



  var city = "Bishkek";           //переменная,значения которой можно поменять в дальнейшем
  final country = "Kyrgyzstan";   //а финал уже нельзя будет поменять в дальнейшем один раз задав ее нельзя будет поменять
  city = "Osh";
  print("City: $city");         
  print("Country: $country");   

  
}