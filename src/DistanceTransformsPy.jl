module DistanceTransformsPy
using CondaPkg
CondaPkg.add("scipy")

using PythonCall

const scipy = PythonCall.pynew()

function __init__()
    PythonCall.pycopy!(scipy, pyimport("scipy"))
end

export scipy

include("scipy.jl")

end
