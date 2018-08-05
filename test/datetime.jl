const REFERENCES = (
    (-4713, 12, 31, -2451546),
    (-4712, 01, 01, -2451545),
    ( 0000, 12, 31,  -730122),
    ( 0001, 01, 01,  -730121),
    ( 1500, 02, 28,  -182554),
    ( 1500, 02, 29,  -182553),
    ( 1500, 03, 01,  -182552),
    ( 1582, 10, 04,  -152385),
    ( 1582, 10, 15,  -152384),
    ( 1600, 02, 28,  -146039),
    ( 1600, 02, 29,  -146038),
    ( 1600, 03, 01,  -146037),
    ( 1700, 02, 28,  -109514),
    ( 1700, 03, 01,  -109513),
    ( 1800, 02, 28,   -72990),
    ( 1800, 03, 01,   -72989),
    ( 1858, 11, 15,   -51546),
    ( 1858, 11, 16,   -51545),
    ( 1999, 12, 31,       -1),
    ( 2000, 01, 01,        0),
    ( 2000, 02, 28,       58),
    ( 2000, 02, 29,       59),
    ( 2000, 03, 01,       60),
)

@testset "DateTime" begin
    @testset for ref in REFERENCES
        s = ScaledDate{TT}(ref[end])
        @test year(s) == ref[1]
        @test month(s) == ref[2]
        @test day(s) == ref[3]
    end
end