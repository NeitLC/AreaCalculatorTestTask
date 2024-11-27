using System.Drawing;
using AreaCalculator;

public static class Program
{
    public static void Main(string[] args)
    {
        Circle circle = new Circle(5);
        Console.WriteLine($"Площадь круга: {circle.CalculateArea()}");

        // Пример использования класса Triangle
        Triangle triangle = new Triangle(6, 8, 10);
        Console.WriteLine($"Площадь треугольника: {triangle.CalculateArea()}");

        // Проверка, является ли треугольник прямоугольным
        Console.WriteLine($"Треугольник прямоугольный: {triangle.IsRightAngled()}");
    }
}