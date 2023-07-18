import 'package:flutter/material.dart';
import 'package:matu/pages/auto.page.dart';
import 'package:matu/widgets/offre.widget.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
     List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  Widget lst = ListView.separated(
    //scrollDirection: Axis.horizontal,
  itemCount: items.length,
  separatorBuilder: (BuildContext context, int index) => const Divider(),
  itemBuilder: (BuildContext context, int index) {
    return ListTile(title: Text(items[index]));
  },
);

     Widget listView =  
           ListView(      
            padding: const EdgeInsets.all(20),
                    children:  const [
                      ListTile(
                        title: Text('DDdata',style: TextStyle(fontSize: 20),),
                       subtitle: Text("dddd"),
                       selected: true,
                      
                        ),
                      ListTile(title: Text('data2'),),
                      ListTile(title: Text('data3'),),
                      ListTile(title: Text('data2'),),
                      ListTile(title: Text('data2'),),
                    ],
     
                  );
      
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Matu Assurance')
          ),
          drawer: Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(
                child: Image(image: AssetImage("images/matu.png"),height: 120,width: 120,),
            ),
            Text("Une Mutuelle Engagée !")
          ],
        ),
      ),
      ListTile(
        title: const Text('Item 1'),
        onTap: () {
           Navigator.push(context, 
                   MaterialPageRoute(builder: (context) {
	                      return const MyAutooffre();
        }
        ));
        
        },
      ),
      ListTile(
        title:const  Row(
          children: [
            Icon(Icons.settings_applications_sharp),
             Text('Setting'),
          ],
        ),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
),
        body:   
            const  MyOffre()
          
        )
      );

}

 

}
