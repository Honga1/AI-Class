static public class SortRobots {

    // Logic to sort the elements, highest fitness level first.
    public static void bubbleSort(Robot array[]) {
        int sortableLength = array.length;
        int rightToCurrent;
        
        // Iterates over the length of the array of robots.
        for (int j = sortableLength; j >= 0; j--) {
            
            // Iterates again.
            for (int i = 0; i < sortableLength - 1; i++) {
                rightToCurrent = i + 1;
                
                // Swaps the robots according to the fitness level.
                if (array[i].fitness < array[rightToCurrent].fitness) {
                    swapNumbers(i, rightToCurrent, array);
                }
            }
        }
    }

    // Swaps two robots in an array.
    private static void swapNumbers(int i, int j, Robot[] array) {
        Robot temp;
        temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
}