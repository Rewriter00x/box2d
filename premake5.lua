project "Box2D"
    kind "StaticLib"
    language "C++"
    cppdialect "C++11"
    staticruntime "off"

    targetdir   ("bin/" .. outputdir .. "/%{prj.name}")
    objdir      ("int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",
        "include/**.h",
    }

    includedirs
    {
        "include",
        "src",
    }

    filter "system:windows"
        systemversion "latest"

    filter { "system:windows", "configurations:Debug" }
        runtime "Debug"
        symbols "on"

    filter { "system:windows", "configurations:Release" }
        runtime "Release"
        optimize "on"

    filter { "system:windows", "configurations:Dist" }
        runtime "Release"
        optimize "on"
