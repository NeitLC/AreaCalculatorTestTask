using AreaCalculator;

namespace AreaCalculatorTest;

[TestFixture]
public class AreaCalculatorTests
{
    [Test]
    public void CircleArea_CorrectCalculation()
    {
        var circle = new Circle(5);
        Assert.That(circle.CalculateArea(), Is.EqualTo(Math.PI * 25).Within(1e-10));
    }

    [Test]
    public void TriangleArea_CorrectCalculation()
    {
        var triangle = new Triangle(3, 4, 5);
        Assert.That(triangle.CalculateArea(), Is.EqualTo(6).Within(1e-10));
    }

    [Test]
    public void TriangleIsRightAngled_CorrectCheck()
    {
        var triangle = new Triangle(3, 4, 5);
        Assert.That(triangle.IsRightAngled(), Is.True);

        var nonRightTriangle = new Triangle(4, 4, 5);
        Assert.That(nonRightTriangle.IsRightAngled(), Is.False);
    }
}