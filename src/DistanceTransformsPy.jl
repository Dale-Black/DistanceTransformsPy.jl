module DistanceTransformsPy

using PythonCall

const scipy = PythonCall.pynew()
function __init__()
    PythonCall.pycopy!(scipy, pyimport("scipy"))
end

"""
```julia
pytransform(array)
```

Exact euclidean algorithm from [Scipy](https://docs.scipy.org/doc/scipy/reference/generated/scipy.ndimage.distance_transform_edt.html)
"""
function pytransform(array)
    return pyconvert(Array{Float32}, scipy.ndimage.distance_transform_edt(array))
end

export pytransform

end
