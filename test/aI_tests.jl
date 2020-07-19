using aI_Calculations
using Test

@testset "aI_Calculations.jl" begin
    @test Decibels(10) == 20
    @test Decibels(123) == 41.79810222878796
    @test Decibels(10, 100) == (20, 40)
    @test Decibels(10, 1_000, 100) == (20, 60, 40)
    @test RMS(0, 100, 200) == 99.74968671630002
    @test RMS(-200, 100, 10) == 114.0175425099138
end
