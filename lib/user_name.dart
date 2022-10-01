class UserModel{
   int id;
   String name;
   String phone;
   String rol;
   int counter = 0;

   UserModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.rol,
   });

   getCounter(){
    return counter++;
   }
}