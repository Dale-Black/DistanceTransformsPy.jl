using DistanceTransformsPy
using Test, ImageMorphology

@testset "DistanceTransformsPy.jl" begin
    @testset "Scipy 2D" begin
        x = rand(Bool, 10, 10)
        x_inv = .!x
        test = transform(x, Scipy())
        answer = distance_transform(feature_transform(x_inv))
        @test test ≈ answer
    end
end
