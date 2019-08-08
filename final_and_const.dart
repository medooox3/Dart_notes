/// [final] is used to set values to not change after it is assigned a value
/// that means that i can create a final variable and later assign it the value,
/// this is called assigning the value at (run time) 'meaning : while the program runs'
/// but once the value is assiged it can't change.
/// 
/// [const] is used to set the value to not change,
/// the value is assigned to the variable name while declaring the variable name,
/// it is set at compile time , meaning the variable and its value must be set before compiling the code.
class MyClass{
  final name; // declared the variable
  MyClass(this.name); // assign the value later

  // `` const age;
  // void setAge(age) => this.age = age;  ``
  /// this is wrong , because const values can't be evaluated at run time,
  /// they must be evaluated at compilation time.
  
  /// [const] variables must be assigned a value while being declared 
  static const age = 100;

  /// [const] can be used with variable names like above or with the values assigned to a variable
  /// constant values can't be changed, 
  /// but the variable holding these values if not declared [final] or [const], then it can hold other values
  var hobbies = const ["coding", 'fishing', 'reading'];
  
  // void setHobbies() hobbies.add("football"); /// can't change the [const] list
  /// can't change the [const] list
}

main(List<String> args) {
  MyClass obj = MyClass("Ali");
  // obj.hobbies.add("football"); /// can't change the [const] list
  print(obj.hobbies);
  obj.hobbies = ["football", "swimming"]; /// but i can assign a new value to the variable
  print(obj.hobbies);
}

