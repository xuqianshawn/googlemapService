# Landmark Remark Assignment
This is assignment to demostrate 5 user stories, to save landmark remark of logged user, and load all landmark remarks from different users (including current user).

- 1 As a user (of the application) I can see my current location on a map
- 2 As a user I can save a short note at my current location
- 3 As a user I can see notes that I have saved at the location they were saved on the map
- 4 As a user I can see the location, text, and user­name of notes other users have saved
- 5 As a user I have the ability to search for a note based on contained text or user­name


# Steps to run

  - Restore database named "MapService" in your MSSQL server
  - Modify your web.config with your connection string
  - test registration& login function via http://localhost:56180/Account/Register and http://localhost:56180/Account/Login
  - test account providede user1@123.com P@ssw0rd, user2@123.com P@ssw0rd 
  - 1 test US1 by going to http://localhost:56180/Map/Index to view current location
  - 2 test US2 by filling up textbox beside "Save my location" and click that button
  - 3 test US3 by check the result screen after previous step
  - 4 test US4 by repeat step 1-2 by logging in using different accounts
  - 5 test search function by filling up textbox beside "Search Key words" and click that button, and observe the result screen




