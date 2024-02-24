import 'package:mongo_dart/mongo_dart.dart';

void main(List<String> arguments) async{

  var db = Db('mongodb://admin:QUPGcQRMPuHqXjLNe5sUY7kY@bulbaman.me:27017/admin');

    await db.open();

    var coll = db.collection('test');

    var read = await coll.find().toList();

    var created = await coll.insert({"name":"Ruslan","mail": "ogaskoyn" });
    // print(created);

    var find_created = await coll.findOne({"name":"Ruslan","mail": "ogaskoyn" });

    var update = coll.updateOne(where.eq("name","Ruslan"), modify.set('age', 69));
    var find_updated = await coll.findOne({"name":"Ruslan","mail": "ogaskoyn", 'age': 69 });

    // var delete =  await coll.deleteOne({"name":"Ruslan"});

    // print(read);
    // print("$find_created\n");
    // print("$find_updated\n");
    

    await db.close();
}