project "box2d"
    kind "StaticLib"
    language "C"
    staticruntime "on"

    targetdir("bin/%{prj.name}/" .. outputdir )
    objdir("bin-int/%{prj.name}/" .. outputdir )


    files
    {
      "include/**.h",
      "src/**.cpp"
    }

    includedirs
    {
      "include",
      "src"
    }

		defines 
		{ 
		}

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

    filter "configurations:Development"
		runtime "Release"
        optimize "on"
        
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
