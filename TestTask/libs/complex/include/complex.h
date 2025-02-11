#ifndef COMPLEX_H
#define COMPLEX_H

template<typename T>
class Complex {
private:
    T real;
    T imag;
    static constexpr T PI = T(3.14159265358979323846);

public:
    // Конструкторы
    Complex();
    explicit Complex(T r);
    Complex(T r, T i);

    // Методы доступа
    const T& Re() const;
    T& Re();
    const T& Im() const;
    T& Im();

    // Математические операции
    T Abs() const;
    T Arg() const;
    T ArgDeg() const;
    Complex<T> Conj() const;

    // Фабричные методы
    static Complex<T> CreateComplexFromPhase(T phase);
    static Complex<T> CreateComplexFromPhaseDeg(T phaseDeg);
};

#endif // COMPLEX_H