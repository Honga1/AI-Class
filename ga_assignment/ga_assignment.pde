/*
* Lab assignment Artificial Intelligence Tue Mar 13 2018.
 * Evolutionary computation, pathfinding example.
 *
 * Jae Perris and Joelle Zweekhorst
 */

int generationCounter = 0; //Tracks the number of generations that have been computed
float generationFitness = 0; //Tracks the average fitness of the generation 

int populationSize = 600; //Size of the number of 'Robots' or individual organisms
int geneSize = 300; //Size of the gene string. This * the robot speed gives the maximum travel distance achievable
float mutationRate = 0.05; //The chance that any individual gene is assigned a new random value

boolean newBest = false;

Robot[] robots;
Robot bestAttempt;
Goal goal;

void setup() {
  size(1000, 1000); //Minimum X-Y
  frameRate(10000); //Set this high to un-cap our computation rate

  goal = new Goal(width/2, height/2);
  robots = new Robot[populationSize];

  for (int i = 0; i < populationSize; i++) {
    robots[i] = new Robot(geneSize);
  }

  bestAttempt = new Robot(robots[0]);
}

/**
 * Main loop of the program. 
 **/
void draw() {
  evolve(); //Runs the genetic algorithm
  drawField(); //Draws the objects on the field
  generationCounter++;
}

/**
 * Let's the generation of robots do it's thing and then creates a new one accordingly.
 **/
void evolve() {
  // TODO.
}