#include "include/complex.h"
#include <cmath>

template<typename T>
Complex<T>::Complex() : real(T(0)), imag(T(0)) {}

template<typename T>
Complex<T>::Complex(T r) : real(r), imag(T(0)) {}

template<typename T>
Complex<T>::Complex(T r, T i) : real(r), imag(i) {}

template<typename T>
const T& Complex<T>::Re() const {
    return real;
}

template<typename T>
T& Complex<T>::Re() {
    return real;
}

template<typename T>
const T& Complex<T>::Im() const {
    return imag;
}

template<typename T>
T& Complex<T>::Im() {
    return imag;
}

template<typename T>
T Complex<T>::Abs() const {
    return std::sqrt(real * real + imag * imag);
}

template<typename T>
T Complex<T>::Arg() const {
    return std::atan2(imag, real);
}

template<typename T>
T Complex<T>::ArgDeg() const {
    return Arg() * T(180) / PI;
}

template<typename T>
Complex<T> Complex<T>::Conj() const {
    return Complex<T>(real, -imag);
}

template<typename T>
Complex<T> Complex<T>::CreateComplexFromPhase(T phase) {
    return Complex<T>(std::cos(phase), std::sin(phase));
}

template<typename T>
Complex<T> Complex<T>::CreateComplexFromPhaseDeg(T phaseDeg) {
    T phaseRad = phaseDeg * PI / T(180);
    return CreateComplexFromPhase(phaseRad);
}

// Явная инстанциация шаблона для наиболее часто используемых типов
template class Complex<float>;
template class Complex<double>;
template class Complex<long double>;