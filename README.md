
A web-based note-taking app aimed to have both a **simple** interface but keeping **smart** behavior. <br>
The app is built using Ruby on Rails. 

Hosted Project URl: https://blooming-mountain-89537.herokuapp.com/notes/1

![Screenshot 2019-12-22 at 1 52 09 AM](https://user-images.githubusercontent.com/35702912/71313359-c42c0880-245d-11ea-8531-d70f36e79bb6.png)

## Features
- Addition/Deletion/Updation of Notes
- Information stored about notes
  - Title
  - Tag
  - Content
- Filtering on the basis of tags
- Searching through Notes
- Support for 10 different tags - Urgent, Escalated, Easy, High priority, Low priority, Completed, Pending, Delayed, Low Risk, Casual
- User Authentication
- Validation on the naming of the notes
- Awesome Landing Page
- Markdown Support
- Information about note creation and last updation


## Requirements

- Google Chrome or Firefox browser
- Internet connection

## Setup

1. Clone the Repository
```
$ git clone https://github.com/riyabansal98/GrofersNotesApp.git
```
2. Install the gems
```
$ bundle install
```
3. To set up the tables in the database
```
$ rake db:migrate
```
4. We always have default data that we want to have in our application for testing purposes. The seed command exists to automate this process. To do that use, 
```
$ rake db:seed
```
5. Run  the rails server using the command line simply using,
```
$ rails server
```
6. To run the rails console for testing
```
$ rails console
```
7. Run the application on http://localhost:3000/
## Functionalities

### Home Screen: 
To add a new note, click on Add a new note button.  

![Screenshot 2019-12-20 at 1 14 43 AM](https://user-images.githubusercontent.com/35702912/71210603-41774200-22d3-11ea-9f43-9318fbebf217.png)

### Listing all the Notes:
Each row of the table displays the title of the notes followed by the date and time of creation. Each note can be viewed, edited and deleted as per the use case. 

![Screenshot 2019-12-22 at 1 52 09 AM](https://user-images.githubusercontent.com/35702912/71313359-c42c0880-245d-11ea-8531-d70f36e79bb6.png)

### Filtering the notes on the basis of Tags:
The notes can be filtered on the basis of tags assigned to them. Simply write the name of the required tag and press submit. The relevant notes will be displayed.
Eg: Display the notes which have the tag **urgent**.

![Screenshot 2019-12-22 at 1 57 56 AM](https://user-images.githubusercontent.com/35702912/71313402-81b6fb80-245e-11ea-92ad-589bdd74644a.png)

### Searching through Notes:
Enter the notes you want to search (on the basis of title) in the search bar. The list of matching notes will be displayed. 

![Screenshot 2019-12-22 at 1 34 34 AM](https://user-images.githubusercontent.com/35702912/71313204-65658f80-245b-11ea-8f9d-4239b3a6275d.png)

### New Notes Page: 
To add a new note click on new note. The following page appears. Add the title and the content. You can also add tags such as Urgent, Escalated, Easy, High priority, Low priority, Completed, Pending, Delayed, Low Risk, Casual.

![Screenshot 2019-12-22 at 1 59 16 AM](https://user-images.githubusercontent.com/35702912/71313433-c93d8780-245e-11ea-9fba-bf2b3fbc95b3.png)

### Edit a note:
To edit a note, simply click on the edit note button corresponding to the note that you want to edit. 

![Screenshot 2019-12-22 at 1 59 27 AM](https://user-images.githubusercontent.com/35702912/71313434-ca6eb480-245e-11ea-93d3-53eb9c9487ed.png)
### Delete a note:
To delete a note, simply click on delete corresponding to the note that you want to delete.
Click yes on the pop up and the selected note will be deleted. 
Eg: Lets delete the note new year plans. 

![Screenshot 2019-12-20 at 2 59 13 AM](https://user-images.githubusercontent.com/35702912/71211304-dfb7d780-22d4-11ea-99ab-3c1fb52c3e89.png)

### Display a Note:
To view a particular note, click on the button show. 

![Screenshot 2020-03-28 at 12 45 44 AM](https://user-images.githubusercontent.com/29747452/77791951-83abde80-708d-11ea-96a9-090fff7cbe0e.png)

### User Authentication:

![Screenshot 2019-12-22 at 1 30 51 AM](https://user-images.githubusercontent.com/35702912/71313150-cd67a600-245a-11ea-9cd6-14aeda5ca0ca.png)
