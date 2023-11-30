package("prunemaths")
    set_kind("library", {headeronly = true})
    set_homepage("https://github.com/Prune-Games/PruneMaths")
    set_description("Math Library for the Prune Engine")

    add_urls("https://github.com/Prune-Games/PruneMaths.git")

    add_versions("1.1", "3512a28a6b07380645747aecceda4a3d3fc0b49b")
    add_versions("1.0", "b0f9e7b35076eb0b01cfeeebb3d5c788abaedcf3")

    add_includedirs("include", "include/prunemaths")
    
    on_install(function (package)
        os.cp("Headers/Maths.hpp", "$(projectdir)/PruneEngine/include/Maths/Maths.hpp")
        os.cp("Headers/Maths.inl", "$(projectdir)/PruneEngine/include/Maths/Maths.inl")
        os.cp("Sources/Maths.cpp", "$(projectdir)/PruneEngine/src/Maths/Maths.cpp")
    end)
