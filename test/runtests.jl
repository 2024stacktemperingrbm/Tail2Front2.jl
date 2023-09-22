import Aqua
import Tail2Front2
using Test: @testset, @test, @inferred
using Tail2Front2: tail2, front2

@testset "aqua" begin
    Aqua.test_all(Tail2Front2)
end

@testset "tail2" begin
    @test @inferred(tail2((1,2,3,4,5))) == (3,4,5)
    @test @inferred(tail2((1,2))) == ()
end

@testset "front2" begin
    @test @inferred(front2((1,2,3,4,5))) == (1,2,3)
    @test @inferred(front2((1,2))) == ()
end
