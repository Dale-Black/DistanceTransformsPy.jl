using DistanceTransformsPy
using ImageMorphology: distance_transform, feature_transform
using Test

@testset "1D" begin
    ns = [10, 100]
    for n in ns
        x = rand(Bool, n)
        x_inv = .!x
        test = pytransform(x)
        answer = distance_transform(feature_transform(x_inv))
        @test test ≈ answer
    end
end

@testset "2D" begin
    ns = [10, 100]
    for n in ns
        x = rand(Bool, n, n)
        x_inv = .!x
        test = pytransform(x)
        answer = distance_transform(feature_transform(x_inv))
        @test test ≈ answer
    end
end
