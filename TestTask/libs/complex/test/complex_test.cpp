// complex_test.cpp
#include <gtest/gtest.h>
#include "include/complex.h"
#include <cmath>

class ComplexTest : public ::testing::Test {
protected:
    const double EPSILON = 1e-10;  // Допустимая погрешность для сравнения чисел с плавающей точкой
};

// Тесты конструкторов
TEST_F(ComplexTest, DefaultConstructorInitializesZero) {
    Complex<double> c;
    EXPECT_DOUBLE_EQ(c.Re(), 0.0);
    EXPECT_DOUBLE_EQ(c.Im(), 0.0);
}

TEST_F(ComplexTest, SingleArgumentConstructor) {
    Complex<double> c(3.0);
    EXPECT_DOUBLE_EQ(c.Re(), 3.0);
    EXPECT_DOUBLE_EQ(c.Im(), 0.0);
}

TEST_F(ComplexTest, TwoArgumentConstructor) {
    Complex<double> c(3.0, 4.0);
    EXPECT_DOUBLE_EQ(c.Re(), 3.0);
    EXPECT_DOUBLE_EQ(c.Im(), 4.0);
}

// Тесты методов доступа
TEST_F(ComplexTest, AccessorsReturnCorrectValues) {
    Complex<double> c(3.0, 4.0);
    EXPECT_DOUBLE_EQ(c.Re(), 3.0);
    EXPECT_DOUBLE_EQ(c.Im(), 4.0);
}

TEST_F(ComplexTest, ModifiersChangeValues) {
    Complex<double> c;
    c.Re() = 3.0;
    c.Im() = 4.0;
    EXPECT_DOUBLE_EQ(c.Re(), 3.0);
    EXPECT_DOUBLE_EQ(c.Im(), 4.0);
}

// Тесты математических операций
TEST_F(ComplexTest, AbsoluteValueCalculation) {
    Complex<double> c(3.0, 4.0);
    EXPECT_DOUBLE_EQ(c.Abs(), 5.0);
}

TEST_F(ComplexTest, ArgumentInRadians) {
    Complex<double> c(1.0, 1.0);  // 45 градусов
    EXPECT_NEAR(c.Arg(), M_PI/4, EPSILON);
}

TEST_F(ComplexTest, ArgumentInDegrees) {
    Complex<double> c(1.0, 1.0);  // 45 градусов
    EXPECT_NEAR(c.ArgDeg(), 45.0, EPSILON);
}

TEST_F(ComplexTest, ConjugateNumber) {
    Complex<double> c(3.0, 4.0);
    Complex<double> conj = c.Conj();
    EXPECT_DOUBLE_EQ(conj.Re(), 3.0);
    EXPECT_DOUBLE_EQ(conj.Im(), -4.0);
}

// Тесты фабричных методов
TEST_F(ComplexTest, CreateFromPhaseRadians) {
    double phase = M_PI / 4;  // 45 градусов
    Complex<double> c = Complex<double>::CreateComplexFromPhase(phase);
    EXPECT_NEAR(c.Abs(), 1.0, EPSILON);
    EXPECT_NEAR(c.Arg(), phase, EPSILON);
}

TEST_F(ComplexTest, CreateFromPhaseDegrees) {
    double phaseDeg = 45.0;
    Complex<double> c = Complex<double>::CreateComplexFromPhaseDeg(phaseDeg);
    EXPECT_NEAR(c.Abs(), 1.0, EPSILON);
    EXPECT_NEAR(c.ArgDeg(), phaseDeg, EPSILON);
}

// Граничные случаи
TEST_F(ComplexTest, ZeroComplexNumber) {
    Complex<double> c;
    EXPECT_DOUBLE_EQ(c.Abs(), 0.0);
    // Аргумент нуля не определен, поэтому этот тест опущен
}

TEST_F(ComplexTest, PureImaginaryNumber) {
    Complex<double> c(0.0, 1.0);
    EXPECT_NEAR(c.ArgDeg(), 90.0, EPSILON);
}

TEST_F(ComplexTest, PureRealNumber) {
    Complex<double> c(1.0, 0.0);
    EXPECT_NEAR(c.ArgDeg(), 0.0, EPSILON);
}

// Тесты на различные типы данных
TEST_F(ComplexTest, FloatTypeSupport) {
    Complex<float> c(3.0f, 4.0f);
    EXPECT_FLOAT_EQ(c.Abs(), 5.0f);
}

TEST_F(ComplexTest, LongDoubleTypeSupport) {
    Complex<long double> c(3.0L, 4.0L);
    EXPECT_NEAR(static_cast<double>(c.Abs()), 5.0, EPSILON);
}