module Build.Modules
    ( Module(..)
    , modules
    , coreModules
    , findModule
    , getModuleDeps
    ) where

import Data.List (find)

-- | Chicken Scheme module definition
data Module = Module
    { modName     :: String
    , modSrc      :: FilePath  -- Main source (empty if library-only)
    , modTest     :: FilePath  -- Test file
    , modDeps     :: [FilePath] -- Dependency sources
    } deriving (Show, Eq)

-- | Core library files (foundation dependencies)
coreModules :: [FilePath]
coreModules =
    [ "core/machine_constants.scm"
    , "core/golay_frontier.scm"
    , "core/cartan_utils.scm"
    , "core/kak_decomposition.scm"
    ]

-- | Golay-specific dependencies (subset of core)
golayModules :: [FilePath]
golayModules =
    [ "core/machine_constants.scm"
    , "core/golay_frontier.scm"
    ]

-- | All available modules in the project
modules :: [Module]
modules =
    [ Module 
        { modName = "boids"
        , modSrc = "modules/boids/boids_main.scm"
        , modTest = "tests/boids_tests.scm"
        , modDeps = coreModules
        }
    , Module 
        { modName = "fmm"
        , modSrc = "modules/fmm/fmm_main.scm"
        , modTest = "tests/fmm_tests.scm"
        , modDeps = coreModules
        }
    , Module 
        { modName = "sssp"
        , modSrc = "modules/sssp/sssp_main.scm"
        , modTest = "tests/sssp_tests.scm"
        , modDeps = coreModules
        }
    , Module 
        { modName = "kak-decomposition"
        , modSrc = "core/kak_decomposition.scm"
        , modTest = "tests/kak_tests.scm"
        , modDeps = [ "core/machine_constants.scm"
                    , "core/golay_frontier.scm"
                    , "core/cartan_utils.scm"
                    ]
        }
    , Module 
        { modName = "golay24-tool"
        , modSrc = "tools/golay24-tool/golay24_main.scm"
        , modTest = "tests/golay24_tests.scm"
        , modDeps = golayModules
        }
    , Module 
        { modName = "sssp_geometry"
        , modSrc = "modules/sssp_geometry/sssp_geo_main.scm"
        , modTest = "tests/sssp_geometry_tests.scm"
        , modDeps = golayModules
        }
    ]

-- | Find module by name
findModule :: String -> Maybe Module
findModule name = find (\m -> modName m == name) modules

-- | Get all dependencies for a module (transitive closure)
-- In a more complex system, this would compute transitive deps
getModuleDeps :: Module -> [FilePath]
getModuleDeps = modDeps