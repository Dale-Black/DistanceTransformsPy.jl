### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ b1fee23a-96fd-4e64-973a-19387846b29d
# ╠═╡ show_logs = false
begin
    using Pkg
    Pkg.activate("..")
    using PythonCall, DistanceTransformsPy
end

# ╔═╡ 8f08ad50-303e-4b45-b83d-eb5391c35298
abstract type DistanceTransformPy end

# ╔═╡ e044a6aa-40af-49a2-8044-c5579b13808e
md"""
# `Scipy`
"""

# ╔═╡ 959f85c5-c8b5-4f6a-adb1-aa8021ff0aa4
"""
```julia
struct Scipy <: DistanceTransformPy end
```

Exact euclidean algorithm ported from [Scipy](https://docs.scipy.org/doc/scipy/reference/generated/scipy.ndimage.distance_transform_edt.html)
"""
struct Scipy <: DistanceTransformPy end

# ╔═╡ d9eb525f-5094-44b2-af1f-6581f96374a4
export Scipy

# ╔═╡ f1ab96e3-f7ab-4e30-8db2-dbdd0eaf3c7e
function transform(array, tfm::Scipy)
    return pyconvert(Array{Float32}, scipy.ndimage.distance_transform_edt(array))
end

# ╔═╡ d94f7b22-5281-4c91-8c7d-94f8c1477943
export transform

# ╔═╡ Cell order:
# ╠═b1fee23a-96fd-4e64-973a-19387846b29d
# ╠═8f08ad50-303e-4b45-b83d-eb5391c35298
# ╟─e044a6aa-40af-49a2-8044-c5579b13808e
# ╠═959f85c5-c8b5-4f6a-adb1-aa8021ff0aa4
# ╠═d9eb525f-5094-44b2-af1f-6581f96374a4
# ╠═f1ab96e3-f7ab-4e30-8db2-dbdd0eaf3c7e
# ╠═d94f7b22-5281-4c91-8c7d-94f8c1477943
