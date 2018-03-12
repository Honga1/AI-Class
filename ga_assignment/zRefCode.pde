//void evolve() {
//  driveRobots();
//  selection();
//  mutation();
//  // TODO.
//}

//Robot crossover(Robot partner) {

//    // This determines how much of the child will be inherited from each parent. 
//    int crossOverPoint = (int)random(0, genes.length);

//    Robot baby = new Robot(genes.length);

//    // Itterates and copies the genes into the baby robot.
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