# PROJECT 6: Peer Evaluation Tool
## CSE 3901 | MR. GILES
#### JAY SHEN, SETH WALCZAK, RAJAT GUPTA, SIDDHARTH PATEL

##
## Slides for the presentation
https://docs.google.com/presentation/d/1Ejp-aRAdbCuF4_dMSRo1HN8C8F5YfS2q8P7Mx2qr5ik/edit#slide=id.g124f7ba60ed_0_0

## How to run

1. Open a terminal
2. cd into the 8bitwizards-project6 folder
3. Enter `??`
4. 
5. 

This will ensure that you are in the right folder. 

## Project details and Design

This is a web application designed to allow for the giving and recieving of peer evaluations in a team environment. For each project a team has assigned to them, each member can give feedback through a peer evaluation to each of their teammembers. This appication also allows for instructors to administer these evaluations--instructors can create/remove teams and students, as well as assigned projects to teams.


## How to navigate

On loading the web application, all users must either sign-in or sign-up. A sign-in for instructors is pre-determined. After signing in, you can use the navigation bar in the top right to view information. As a student, you can view the teams you are apart of and the evaluations that are available to you, to complete or to view. As an instructor, you can view all teams, all students, and the status of all evaluations.


## Challenges faced in coding

The main challenge we faced was implementing controllers, specifically controllers for connecting two models (e.g. the controller for teammates and the controller for adding projects to a team). Even as a whole group effort we found ourselves very lost. Combined with a constantly changing overall project vision and direction, this meant it was hard to find sustained progress and limited the implementation of the wide amount of features required.


## Responsibilities

Siddharth Patel: Views\
Seth Walczak: Models and migrations\
Rajat Gupta: Models, migrations, add projects controller, evals controller, fix add-teammates issue in team_memberships controller.\
Jay Shen: Views, styling, debugging all pages, add users controller with sign-in authentication, teams controller.\

All: debugging


## Functionalities

1. Database support for multiple teams per person (maximum of 2)
2. Sign-in authentication for both instructors and students
3. Instructor specific views and functionalities

