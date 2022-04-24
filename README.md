# PROJECT 6: Peer Evaluation Tool
## CSE 3901 | MR. GILES
#### JAY SHEN, SETH WALCZAK, RAJAT GUPTA, SIDDHARTH PATEL

##
## Slides for the presentation
https://docs.google.com/presentation/d/1Ejp-aRAdbCuF4_dMSRo1HN8C8F5YfS2q8P7Mx2qr5ik/edit#slide=id.g124f7ba60ed_0_0

## How to run

1. Open a terminal
2. cd into the 8bitwizards-project6 folder
3. Enter `bundle install`
4. Enter `rails db:schema:load`
5. Enter `rails db:migrate`
6. Enter `rails server`
7. Open a web brower and enter the local host address on you computer to run the page


## Project details and Design

This is a web application designed to allow for the giving and recieving of peer evaluations in a team environment. For each survey a team has assigned to them, each member can give feedback to each of their teammembers. This appication also allows for instructors to administer these evaluations--instructors can create/remove teams and students, as well as assign surveys to teams.


## How to navigate

On loading the web application, all users must either sign-in or sign-up. Currently, to create an admin account you can check the "admin" checkbox. After signing in, you can use the navigation bar in the top right to view information. As a student, you can view the teams you are apart of (only visible when you are in at least one team) and the evaluations that are available to you to complete or to view (only visible when there is at least one evaluation survey). As an instructor, you can view all teams, all students, and the status of all evaluations.


## Challenges faced in coding

The main challenge we faced was implementing controllers, specifically controllers for connecting two models (e.g. the controller for teammates and the controller for adding surveys to a team). Even as a whole group effort we found ourselves very lost. Combined with a constantly changing overall project vision and direction, this meant it was hard to find sustained progress and limited the implementation of the wide amount of features required.


## Responsibilities

Siddharth Patel: Views\
Seth Walczak: Models and migrations\
Rajat Gupta: Models, migrations, add projects controller, evals controller, fix add-teammates issue in team_memberships controller, made the survey, made the results.\
Jay Shen: Views, styling, debugging all pages, add useful features from tutorial (chapter 7-10), add users controller with sign-in authentication, teams controller.


All: debugging, documentation


## Functionalities

1. Sign-in authentication for both instructors and students
2. Instructor specific views and functionalities, including viewing and editing teams, teammates and project surveys.
3. Students can be able to submit scores and comments for all their teammates (and only their teammates).


