/**
 * Function that places all the obstacles and the goal on the screen.
 **/
void drawField() {

  // The function executes once every 100 generations or if a new best solution is found.
  if (generationCounter % 100 == 0 || newBest) {
    background(0);
    goal.drawSelf();

    // Displays obstacles on screen.
    for (int i = 0; i < obstacles.length; i++) {
      obstacles[i].drawSelf();
    }

    // Displays all robots within the current generation on screen (white).
    for (int i = 0; i < robots.length; i++) {
      robots[i].drawSelf(goal);
    }

    // Displays the best attempt on screen (red).
    bestAttempt.drawSelf(goal);
    newBest = false;

    println("Gen: " + generationCounter);
    println("Gen Fit: " + generationFitness);
  }
}

/**
 * Displays the robots on the screen and calculates their fitness.
 **/
void driveRobots() {

  generationFitness = 0;

  //Iterates over each robot, and drives their paths
  for (int i = 0; i < robots.length; i++) {
    robots[i].drivePath(goal, obstacles);

    // The generation fitness is the sum of all fitnesses within the population.
    generationFitness += robots[i].fitness;
  }
  SortRobots.bubbleSort(robots); //Sorts robots by fitness
  
  // Selects the best attempt by choosing the first robot in the array.
  bestAttempt = new Robot(robots[0]);

  // Checks if the best attempt is actually still the best attempt.
  if (bestAttempt.fitness < robots[0].fitness) {
    newBest = true;
  }
}

/**
 * Changes the genes of a robot randomly. Chances of this happening depends on mutation rate.
 **/
void mutation() {
  //Iterates over all of the robots and runs their mutation script. Changing genes at the mutation_rate specified on the main page.
  for (int i = 0; i < robots.length; i++) {
    robots[i].mutate(mutationRate);
  }
}

/**
 * Uses the current generation of robots to produce a new generation.
 **/
void selection() {
  SortRobots.bubbleSort(robots); //Sorts robots by fitness

  Robot[] newGeneration = new Robot[robots.length];

  // Iterates over the array of robots.
  for (int i = 0; i < robots.length; i++) {

    // Select partner for the current iteration.
    int partnerIndex = (int)(random(1) * random(1) * robots.length);

    // A new robot is created with genotypes from both parents.
    Robot baby = robots[i].crossover(robots[partnerIndex]);
    newGeneration[i] = baby;
  }

  robots = newGeneration;
}