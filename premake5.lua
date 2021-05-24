project "stb"
    language "C"
    architecture "x86_64"
    cppdialect "C++17"
    kind "StaticLib"

    location ""
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    -- all files that are included or compiled = all files that are visible to the preprocessor/compiler/linker and make and stuff
    files
    {
        "**.h"
    }

    -- for #include paths with ""
    includedirs {
        ""
    }

