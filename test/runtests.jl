using GriddingMachine.Collections
using Test


# test query_collection function
@testset "GriddingMachine : Collections" begin
    query_collection(VcmaxCollection()); @test true;

    # only for high memory and storage cases, e.g., server
    if Sys.islinux() && (Sys.total_memory() / 2^30) > 30
        query_collection(CanopyHeightCollection(), "20X_1Y_V1"); @test true;
        query_collection(CanopyHeightCollection(), "2X_1Y_V2" ); @test true;
        query_collection(ClumpingIndexCollection(), "240X_1Y_V1"); @test true;
        query_collection(ClumpingIndexCollection(), "2X_1Y_V1"  ); @test true;
        query_collection(ClumpingIndexCollection(), "2X_1Y_V2"  ); @test true;
        query_collection(SpecificLeafAreaCollection(), "2X_1Y_V1"); @test true;
        query_collection(SpecificLeafAreaCollection(), "2X_1Y_V2"); @test true;
        query_collection(VcmaxCollection(), "2X_1Y_V1"); @test true;
        query_collection(VcmaxCollection(), "2X_1Y_V2"); @test true;
    end
end
