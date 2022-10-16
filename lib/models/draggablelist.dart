class Data {

    final String id;
     final String title;
     bool showAddReminder = false;
      String time = "Add Reminder";
    Data (this.id, this.title, [this.time="Add Reminder",this.showAddReminder=false]);
}
