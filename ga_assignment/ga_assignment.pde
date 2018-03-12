/*
* Lab assignment Artificial Intelligence Tue Mar 13 2018.
* Evolutionary computation, pathfinding example.
*
* Jae Perris and Joelle Zweekhorst
*/

int generationCounter = 0;
int populationSize = 600;
int geneSize = 200;
float mutationRate = 0.05;
float generationFitness = 0;
boolean newBest = false;
boolean newSol = false;

Robot[] robots;
Robot bestAttempt;
Goal goal;

void setup() {
    size(500, 500);
    frameRate(10000);
    
    goal = new Goal(width/2, height/2);
    robots = new Robot[populationSize];
    
    for (int i = 0; i < populationSize; i++) {
        robots[i] = new Robot(geneSize);
    }
    
    bestAttempt = new Robot(robots[0]);
    
}

// Main loop.
void draw() {
    
    evolve();
    
    drawField();
    generationFitness = 0;
    generationCounter++;
    
}