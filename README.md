# Flutter Frontend for PSG Scapes

The frontend for PSG Scapes, a student project for PSG College of Technology. It is only the student view of the app, the teacher view and admin view are to be completed at a later date and integrated with this. The app has the following pages

## Login

The login page connects to the MongoDB and verifies the users and returns what role they belong to
![WhatsApp Image 2023-08-17 at 10 47 30](https://github.com/TheR3dWizard/scapesstudview/assets/34707235/52a78e30-e4cf-4560-8985-f844536a4b2a)



## Homepage

This page shows the daily timetable and what classes are to attended



## Calendar

This page shows the timetable of all days of the week

![WhatsApp Image 2023-08-17 at 10 47 31](https://github.com/TheR3dWizard/scapesstudview/assets/34707235/96aef4ae-0dfd-4c0e-9a16-537f3fed2b6f)



## User Details

This page contains all the details of the user such as department roll number and role 
![WhatsApp Image 2023-08-17 at 10 47 31](https://github.com/TheR3dWizard/scapesstudview/assets/34707235/8639a3c1-1d01-450c-97e8-d25f7b3adde9)


## Semester Attendance

This page contains the total attendance for every course in the semester
![WhatsApp Image 2023-08-17 at 10 47 32](https://github.com/TheR3dWizard/scapesstudview/assets/34707235/5db50abf-f624-4906-96b2-275b74a50546)


# Main Feature

The main feature of the app is its automatic attendance verification. Using the inbuilt BLE module, the app will check if the phone is in the vicinity of BLE beacons which deote each classroom. This would eliminate the need for manual attendance if fully implemented by PSG. However in the likely chance that it isn't, it can be used to verify attendance in situations where attendance has been wrongly marked.

It works by scanning all the UUIDs (or MAC addresses for android) multiple times within an hour and checks if the required beacon for the class (taken from the backend according to the timetable) has been scanned. It then 
sends if it found the UUID back to the backend where it is processed.

# Limitation

The project could not be completed as the BLE packages for Flutter (FlutterBlue, FlutterBluePlus, FlutterReactiveBle were tested) could not run on as a background task with the WorkManager and FlutterBackgroundService packages.
