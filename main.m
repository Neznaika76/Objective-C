#import <Foundation/Foundation.h>

double calculateDiscriminant(double a, double b, double c) {
    return pow(b, 2) - 4 * a * c;
}

NSArray *solveQuadraticEquation(double a, double b, double c) {
    double discriminant = calculateDiscriminant(a, b, c);
    if (discriminant < 0) {
        return @[];
    } else if (discriminant == 0) {
        double solution = -b / (2 * a);
        return @[@(solution)];
    } else {
        double firstSolution = (-b + sqrt(discriminant)) / (2 * a);
        double secondSolution = (-b - sqrt(discriminant)) / (2 * a);
        return @[@(firstSolution), @(secondSolution)];
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Equation: x^2 – 8x + 12 = 0
        double a1 = 1;
        double b1 = -8;
        double c1 = 12;
        NSArray *solutions1 = solveQuadraticEquation(a1, b1, c1);
        NSLog(@"Solutions for x^2 – 8x + 12 = 0: %@", solutions1);
        
        // Equation: 12x^2 – 4x + 2 = 0
        double a2 = 12;
        double b2 = -4;
        double c2 = 2;
        NSArray *solutions2 = solveQuadraticEquation(a2, b2, c2);
        NSLog(@"Solutions for 12x^2 – 4x + 2 = 0: %@", solutions2);
        
        // Equation: x^2 – 100x - 2 = 0
        double a3 = 1;
        double b3 = -100;
        double c3 = -2;
        NSArray *solutions3 = solveQuadraticEquation(a3, b3, c3);
        NSLog(@"Solutions for x^2 – 100x - 2 = 0: %@", solutions3);
    }
    return 0;
}
