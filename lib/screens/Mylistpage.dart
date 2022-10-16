import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:todoappp/api/firebase_api.dart';
import 'package:todoappp/components/app_colors.dart';
import 'package:todoappp/models/task.dart';
import 'package:todoappp/provider/task_provider.dart';
class Mylistpage extends StatefulWidget{
  const Mylistpage({ Key ? key}) : super(key: key);

@override 
_MylistpageState createState() => _MylistpageState();
}
class _MylistpageState extends State<Mylistpage>{
    final TasksProvider _tasksProvider = TasksProvider();
  
    final myController = TextEditingController();
  
    bool textFieldVisible = false;
  @override
  void initState() {
    super.initState();
  }
   @override
  Widget build(BuildContext context) { 
     
     int _listLength = _tasksProvider .tasks.length;
     return  Scaffold(
        appBar: (AppBar(
          toolbarHeight: 40.0,
          backgroundColor: Colors.black,
          title: const Center(
            child: (
              Text('My list',
              textAlign: TextAlign.center,
              style:TextStyle(fontSize:20,
              color:Colors.white),
              )
            ),
          ),
        )
        ),
          body : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
             Padding(
               padding: const EdgeInsets.only(left:  8.0,right: 4.0),
               child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisSize: MainAxisSize.min,
                 children: [
                   Expanded(
                     child:  TextField(
                      controller: myController,
                      decoration: const InputDecoration(hintText: 'Enter Task'),
                             )    
                   ),
                   const Spacer(),
           Expanded(
               child: TextButton(
                 style: ButtonStyle
                 (
                     backgroundColor:MaterialStateProperty.all(Colors.black),

                 ),
                 onPressed: (){
                      if(myController.text.isNotEmpty){
                          _tasksProvider.addTask(Task(id: '${myController.text}1', title: myController.text));
                          print(myController.text);
                         _listLength =_tasksProvider.tasks.length;
                        myController.clear();
                        } else{
                          ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                            content: Text("Text is empty"),
                          ));
                        }
                 },
                 child: const  Icon(
                  Icons.add,
                  color: Colors.white,
                 ),
               )
           ),
                 ],
               ),
             ),
            Expanded(
              child: StreamBuilder<List<Task>>(
              stream: FirebaseApi.readTasks(),
             builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                 return const Center(
                 child: CircularProgressIndicator(),
                );
               }else if (snapshot.hasError){
             return const Center(
             child: Text('Oops! Something went wrong\n Please Try again later.'),
               );
             }else{
            List<Task> _tasks = snapshot.data as  List<Task>;
        final provider = Provider.of<TasksProvider>(context);
        provider.setTasks(_tasks);
        return ReorderableListView.builder(
          itemCount: _tasks.length,
          shrinkWrap: true,
          onReorder: (oldIndex, newIndex)  {
            final index = newIndex > oldIndex ? newIndex - 1 : newIndex;
           _tasksProvider.reorderlist(_tasks,index, oldIndex);
           setState(() {
             _tasks = _tasksProvider.tasks;
           });
          },
          itemBuilder: (context, index) {
            final item =  _tasks[index];
            if(_tasks.isNotEmpty){
              return dismissableWidget(index,_tasks,item,context);
            }else{
              return const Center(
                child: Text("No Data"),
              );
            }
          },
        );
         }
       })
            ),
          ],)
          );

  }

  Widget dismissableWidget(int index,List _tasks
  ,var item,BuildContext context) {
    return Dismissible(
          key: Key(item.id),
          background: Container(
            color: Colors.green,
            child: const Icon(Icons.check,color: Colors.white,size: 30,),
          ),
          secondaryBackground: Container(
            color: Colors.red,
            child: const Icon(Icons.close,color: Colors.white,size: 30,),
          ),
          onDismissed: (direction){
            if(direction == DismissDirection.endToStart){
          
                _tasksProvider.removeTask(item);

             ScaffoldMessenger.of(context).showSnackBar(  SnackBar(
                  content: Row(
                    children: [
                     const Icon(Icons.close,color:Colors.red,size: 30,),
                      Text('${item.title} dismissed',style: const TextStyle(fontSize: 20,decoration: TextDecoration.lineThrough),),
                    ],
                  ),
                ),
              );
            }else if(direction == DismissDirection.startToEnd){
                  _tasksProvider.removeTask(item);
              
           ScaffoldMessenger.of(context).showSnackBar(  SnackBar(
                  content: Row(
                    children: [
                      const Icon(Icons.check,color:Colors.white,size: 30,),
                      Text('${item.title} completed',style:const TextStyle(fontSize: 20,decoration: TextDecoration.lineThrough),),
                    ],
                  ),
                ),
              );
            }
          },
        
          child: Container(
           color: Color(AppColors.heatMapShades[index]),
            child: GestureDetector(
              onTap: () {
                    _tasksProvider.updateReminder(_tasks[index], true);
                       _tasksProvider.setTasks(_tasks as List<Task>);
              },
              child: Padding(
                padding: const EdgeInsets.only(left:8.0,),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                     _tasks[index].title,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  contentPadding:const EdgeInsets.symmetric(vertical: 10),
                  subtitle:  
                  //_tasksProvider.tasks[index].showAddReminder?
                 _tasks[index].showAddReminder?
                   InkWell(
                     onTap: () {
                        _showIOS_DatePicker(context,index);
                     },
                     child: Padding(
                       padding: const EdgeInsets.only(right:8.0,left:8.0),
                       child: Text( _tasks[index].time),
                     ))
                   :const Text("")
                ),
              ),
            ),
          ),
        
        );
  }

 void _showIOS_DatePicker(BuildContext ctx,int index) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              height: 190,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: CupertinoDatePicker(
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (val) {
                           final task = _tasksProvider.tasks[index];
                           String _date = DateFormat.MMMEd().format(val);
                           String _time = DateFormat.jm().format(val);
                           String _dateTime = _date+"  "+_time;
                           _tasksProvider.updateReminder(task, true,time: _dateTime);
                        }),
                  ),
                ],
              ),
            ));
  }
}




















