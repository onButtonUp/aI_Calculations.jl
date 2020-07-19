"""
    RMS(x[n], y[n-1], n)

`y[n] = sqrt((x[n]^2 +(n-1)*(y[n-1]^2))/n)`

Returns RMS value of `x[n]` when added to `y[n-1]` which will then be of length `n`.

### Examples

```jldoctest
julia> RMS(32, 19.2267175, 4)
23.0922064638398

julia> RMS(100, 10, 1_000)
10.483320084782301
```
"""
function RMS(xn, yn_, n)
    return sqrt((xn^2+(n-1)*(yn_^2))/n)
end


"""
    Decibels(a...)

`return = 20*log10(a...)`

Takes one to three values.

Returns (one to three values of) decibel level(s) as a function of 20 times the log10 of value `a` (, `b` ...).

### Examples

```jldoctest
julia> Decibels(2)
6.020599913279624

julia> Decibels(10, 100, 1_000)
(20.0, 40.0, 60.0)
```
"""
Decibels(x) = 20*log10(x)
Decibels(a, b) = (20*log10(a), 20*log10(b))
Decibels(a, b, c) = (20*log10(a), 20*log10(b), 20*log10(c))
