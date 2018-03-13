class Robot {
    final String[] commands = {"LEFT", "RIGHT", "UP", "DOWN"};
    String[] genes;
    float fitness;
    int displRadius = 2;
    int pathLength;
    int x, y;
    int movementSpeed = 10;
    color displColor = color(255, 255, 255, 10);

    // Initialise the robot and give random commands.
    Robot(int _pathSize) {
        fitness = 0;
        pathLength = 0;
        x = 50;
        y = height / 2;

        // The robot is made up of an array of genes that form the path.
        genes = new String[_pathSize];

        // Stores a direction command in each of the genes within the robot.
        for (int i = 0; i < _pathSize; i++) {
            int chosenCommand = (int)random(0, commands.length);
            genes[i] = commands[chosenCommand];
        }
    }

    // Copies a robot to a new robot.
    Robot(Robot _r) {
        fitness = _r.fitness;
        pathLength = _r.pathLength;
        displColor = color(255, 99, 71);
        displRadius = 3;
        genes = new String[_r.genes.length];
        for (int i = 0; i < _r.genes.length; i++) {
            genes[i] = _r.genes[i];
        }
    }

    // Changes one of the genes direction commands randomly. Chances of this happening depends on mutation rate.
    void mutate(float _mutationRate) {
        if (_mutationRate < random(1)) {   
            genes[(int)random(0, genes.length)] = commands[(int)random(0, commands.length)];
        }
    }

    // Creates new robot that inherits from current robot and random partner.
    Robot crossover(Robot partner) {

        // This determines how much of the child will be inherited from each parent. 
        int crossOverPoint = (int)random(0, genes.length);

        Robot baby = new Robot(genes.length);

        // Itterates and copies the genes into the baby robot.
        for (int i = 0; i < genes.length; i++) {
            // TODO 2.
            
            
            
            
            
        }
        return baby;
    }

    // Fitness level of the robot is measured according to distance to the goal.
    void calcFitness(Goal _goal) {
        fitness = 1.0 / (1.0 + pow(pow( x - _goal.x, 2.0) + pow(y - _goal.y, 2.0), 0.5));
    }

    // Displays robot with all individual genes on the screen.
    void drawSelf(Goal _goal) {
        noStroke();
        fill(displColor);
        int[] step = {50, height / 2};

        // Iterates over the genes of the robot.
        for (int i = 0; i < genes.length; i++) {
            if (isAtGoal(_goal)) {
                break;
            }
            if (willHitObstacle(genes[i], obstacles)) {
                // Don't drive step.
            } else {
                step = driveOneStep(genes[i], step[0], step[1]);
                x = step[0];
                y = step[1];

                // Displayes the current gene on screen.
                ellipse(step[0], step[1], displRadius * 2.5, displRadius * 2.5);
            }
        }
    }

    // Chenks if a certain coordinate is is interfering with an obstacle object.
    boolean willHitObstacle(String _step, Obstacle[] _obstacles) {
        int[] step = driveOneStep(_step, x, y);
        for (int i = 0; i < _obstacles.length; i++) {
            if (_obstacles[i].containsPoint(step[0], step[1])) {
                return true;
            }
        }
        return false;
    }

    // Function that returns true if a robot is within the goal range.
    boolean isAtGoal(Goal _goal) {
        if (this.containsPoint(_goal.x, _goal.y)) {
            return true;
        } else {
            return false;
        }
    }

    // Checks if certain coordinate is on the robot.
    boolean containsPoint(int _x, int _y) {
        float distance = pow(pow( x - _x, 2) + pow(y - _y, 2), 0.5);
        if (distance < displRadius) {
            return true;
        } else {
            return false;
        }
    }

    // Displays the robot on the screen and calculates the fitness of the robot. 
    void drivePath(Goal _goal, Obstacle[] obstacles) {
        fitness = 0;
        pathLength = 0;
        x = 50;
        y = height / 2;

        // Iterates over the genes in the robot. 
        for (int i = 0; i < genes.length; i++) {
            if (willHitObstacle(genes[i], obstacles)) {
                // Don't drive step.
            } else {
                int[] step = driveOneStep(genes[i], x, y);
                x = step[0];
                y = step[1];
            }
            pathLength += movementSpeed;

            if (isAtGoal(_goal)) {
                break;
            }
        }
        calcFitness(_goal);
    }

    // Displays the next gene in the array on the right position on the screen.
    int[] driveOneStep(String _step, int _x, int _y) {
        int[] ret = new int[2];

        // Switch that displays the gene on the right position according to the direction command.
        switch(_step) {
        case "LEFT":    
            _x -= movementSpeed;
            break;
        case "RIGHT":
            _x += movementSpeed;
            break;
        case "UP":
            _y -= movementSpeed;
            break;
        case "DOWN":
            _y += movementSpeed;
            break;
        default:
            break;
        }

        ret[0] = _x;
        ret[1] = _y;

        // Returns the new current gene. 
        return ret;
    }
}