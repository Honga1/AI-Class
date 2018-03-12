## Download
To download the code, press the green button in the top right corner that says "Clone or download" and select "Download ZIP". The files you'll need will be in the folder "ga_assignment". It's a processing program, so that should be familliar! If you want to take a look at the slides of the presentation again, they are also in the ZIP folder you just downloaded.

## Lab
For the lab part of this presentation you are going to be programming your own genetic algorithm! Don't be intimidated, we've prepared some things for you. You'll just need to fill in some TODOs that are left open in the code. We'll explain these individual TODOs more in depth below this paragraph. There is also an explaination of each individual processing file in the ga_assignment folder at the end of this readme.

### TODO 1
Tab: ga_assignment
Lines: 62-64
Goals:
Add the following behavior (functions)
Run the robots through their path
Select the robots for crossover
Mutate each of the robots genes randomly

### TODO 2
Tab: Robot
Lines: 58-62
Goals:
Implement one point cross over between parent genes that gives the baby the according genes.
First parents genes can be address by genes[i], the second parent by partner.genes[i];

### TODO 3
Program should now be runnable after TODO 1, 2 is completed. You should see the robots reach the goal, displayed by a red line showing the best solution of the population.

You may now like to add some obstacles to make this harder for the robots
Tab: Obstacles
Lines: 3-6
Goals:
Uncomment the obstacles.
Make the robot solve the puzzle! You may want to experiment with parameters such as the fitness function, population size, gene length, and mutation rate to explore the different behavior.

### TODO 4 (Optional)
Tab: Robot
Lines: 68
Goals:
Make the robots sensitive to their pathLength variable through their fitness function. This will now force the robots to find an optimal path to the goal

Free:
Make the termination characteristics so the program prints "YAY" when you think a 'good enough' solution is found.

## ga_assignment

### ga_assignment
This is the file where all the code comes together. You'll probably still remember the `void setup()` and the `void draw()` function, right? You can find them in here! There is also some global variables defined here, these are usable in every file that is stored in the ga_assignment folder. Something to pay attention to in this file as well is the `evolve()` function. As you can see at the bottom of the code, it is still empty. Your first TODO!

### Environment
Contains functions which interface our robots with their environment, and vice versa. These include, selection, mutation, driving and drawing.

### Goal
This is a small class that makes it possible to draw the goal point on the screen. When you run the code, you will see that this is the grey square in the middle of the screen. The class also has a collision detection function called `containsPoint`. Do you know where that could be used for?

### Obstacles
Contains the code that allows us to display obstacles on the screen. This should make things harder for the computer (ha ha ha).

### Robot
This is the largest part of the code and determines phenotypic expression, representations, breeding mechanisms, and behavior of the robots. This looks complicated but it's mostly standard gaming code for object avoidance and driving etc.

### Sort
A stock-standard bubble-sort algorithm that we use to sort the robots by fitness. Nothing to see here.. move along

### zRefCode
Here you can find the sollutions to the empty TODOs. Only check this after you feel like you've tried your hardest. :-)
