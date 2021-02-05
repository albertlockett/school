
import java.util.*;
import java.lang.Math;

public class Question2 {

  public static void main(String[] args) {
    double[] values = {117.6, 109.5, 111.6, 109.2, 119.1, 110.8};
    
    double mean = Arrays.stream(values)
      .reduce((a, b) -> a + b).getAsDouble()
      / (double) values.length;
    
    double variance = Arrays.stream(values)
      .reduce(0.0, (a, b) ->  a + Math.pow(b - mean, 2.0)) 
      / (double) values.length;

    System.out.println("mean is " + mean);
    System.out.println("variance is " + variance);
    System.out.println("standard deviation is " + Math.sqrt(variance));
  }
}