---
-- languages.lua
-- Language helpers.
-- Copyright (c) 2002-2015 Jason Perkins and the Premake project
---

	premake.languages = {}
	local p = premake
	local languages = p.languages


---
-- List of supported C languages.
---
	languages.c = {
		"C",
		"C89",
		"C90",
		"C99",
		"C11",
		"gnu89",
		"gnu90",
		"gnu99",
		"gnu11",
	}

	function languages.isc(value)
		return table.contains(languages.c, value)
	end

---
-- List of supported C++ languages.
---
	languages.cpp = {
		"C++",
		"C++98",
		"C++11",
		"C++14",
		"C++17",
		"gnu++98",
		"gnu++11",
		"gnu++14",
		"gnu++17",
	}

	function languages.iscpp(value)
		return table.contains(languages.cpp, value)
	end

---
-- List of supported dotnet languages.
---
	languages.dotnet = {
		"C#"
	}

	function languages.isdotnet(value)
		return table.contains(languages.dotnet, value)
	end

---
-- Combined list of all supported languages.
---
	languages.all = table.join(
		languages.c, 
		languages.cpp, 
		languages.dotnet
	)
