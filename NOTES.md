TO DO:

Error page....



Day 1
<!-- DONE--Come up with an idea for your project.
DONE--Create your Sinatra Project.
DONE--Create your repo on github and connect the two together. (Use your google skills if you forgot how to do this!)
DONE--(Optional) Create a NOTES.md, this file will be used to brainstorm on how things will be associated, the different routes, and anything you would want to write for notes. 
DONE--Create your user model / controller and wire it up with being able to sign up, log in, and log out.
 DONE--Make sure bcrypt is added to the gemfile, if it’s not add it and bundle install and use bcrypt as you had learned in the lessons for user authentication and password encryption. -->


Day 2
Create another model(s) / controller(s) as something a user would own.
Wire up the associations
Work on index views example: get /resources as well as a show route example: get /resources/:id


Day 3
Continue if not finished off of Day 2.
Finish restful routes and CRUD
Work on protecting user data. Make sure the user can only update and destroy it’s own resources. This should be both in the view and in the controller.


Day 4
Test out your project to make sure it works as intended. Do any last minute touch ups to it if needed.
(optional) Pair with someone to practice speaking about your website and going over what you did to create it.
(optional) Add some styling using a styling framework such as materialize css.

----------------------------------------------------------------------------------------------------

Requirements for Sinatra Project


-Build an MVC Sinatra Application
-Use Activerecord with Sinatra
-Use Multiple Models
-Use at least one has_many relationship / belongs_to relationship
-Must have user accounts. The user that created a given piece of content should be the only person who can modify that content
-Must have the abilty to create, read, update and destroy any instance of the resource that belongs to a user.
-Ensure that any instance of the resource that belongs to a user can be edited or deleted only by that user.
-You should also have validations for user input to ensure that bad data isn't added to the database. The fields in your signup form should be required and the user attribute that is used to login a user should be a unique value in the DB before creating the user.
-(optional) Try to make multiple git commits. (A commit for every feature you add). It’s good practice!

