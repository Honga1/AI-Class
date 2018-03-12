//void evolve() {
//  driveRobots();
//  selection();
//  mutation();
//}

//Robot crossover(Robot partner) {

//    // This determines how much of the child will be inherited from each parent. 
//    int crossOverPoint = (int)random(0, genes.length);

//    Robot baby = new Robot(genes.length);

//    // Iterates and copies the genes into the baby robot.
//    for (int i = 0; i < genes.length; i++) {
//        if (i < crossOverPoint) {
//            baby.genes[i] = partner.genes[i];
//        } else {
//            baby.genes[i] = this.genes[i];
//        }
//    }
//    return baby;
//}

//Obstacle[] obstacles = 
//  //{new Obstacle(200, 520, 15, 220, color(111, 111, 111)), 
//  //new Obstacle(400, 500, 15, 200, color(111, 111, 111)), 
//  //new Obstacle(500, 600, 220, 15, color(111, 111, 111)), 
//  //new Obstacle(500, 400, 220, 15, color(111, 111, 111))};


// Fitness level of the robot is measured according to distance to the goal, and directness.
//    void calcFitness(Goal _goal) {
//        fitness = 1.0 / (1.0 + pow(pow( x - _goal.x, 2.0) + pow(y - _goal.y, 2.0), 0.5)) * 1.0 / (float)pathLength;
//    }