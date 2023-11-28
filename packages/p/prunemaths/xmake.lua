package("prunemaths")
    set_kind("library", {headeronly = true})
    set_homepage("https://github.com/Prune-Games/PruneMaths")
    set_description("Math Library for the Prune Engine")

    add_urls("https://github.com/Prune-Games/PruneMaths.git")

    add_versions("1.0", "b0f9e7b35076eb0b01cfeeebb3d5c788abaedcf3")

    add_includedirs("include", "include/prunemaths")
    
    on_install(function (package)
        os.cp("Headers/*.hpp", "$(projectdir)/include/prunemaths")
        os.cp("Headers/*.inl", "$(projectdir)/include/prunemaths")
        os.cp("Sources/*.cpp", "$(projectdir)/include/prunemaths")
    end)
