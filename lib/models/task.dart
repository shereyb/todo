class Task {    
     String id;
     String title;
     bool showAddReminder = false;
     bool isDone = false;
      String time = "Add Reminder";
    
    Task ({required this.id, required this.title,this.time="Add Reminder",this.showAddReminder=false,this.isDone = false});
   
   static Task fromJson( Map<String,dynamic> json) => Task(
     id: json['id'],
     title: json['title'],
     showAddReminder: json['showAddReminder'],
     isDone: json['isDone'],
     time: json['time'],
     );
   Map<String,dynamic> toJson() => {
   'id':id,
   'title':title,
   'showAddReminder':showAddReminder,
   'isDone': isDone,
   'time' : time,
   };

}