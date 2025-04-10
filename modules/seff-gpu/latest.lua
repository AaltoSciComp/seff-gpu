-- -*- lua -*-

whatis([[Name : seff-gpu]])
whatis([[Version : latest]])
help([[This is a variant of the seff script that supports GPU usage output.]])

local seff_install_root = "PATH_TO_CLONED_REPOSITORY"

prepend_path("PATH", seff_install_root .. "/bin")
