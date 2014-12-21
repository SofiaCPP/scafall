project 'test'
    kind 'ConsoleApp'
    language 'C++'
    uuid '9e48a5cb-7ab9-4e0a-a081-d4772a8dfb4a'

    includedirs {
        'gmock/include',
        'gmock/gtest/include',
    }

    files {
        '*.cpp', '*.c', '*.cc', '*.cxx',
        '*.hpp', '*.h', '*.hh', '*.hxx',
    }
    excludes 'gmock'

    pchheader(path.getabsolute('precompiled.hxx'))
    pchsource(path.getabsolute('precompiled.cxx'))

    links {
        'gmock_main',
        'gmock',
        'gtest',
    }

    configuration 'linux'
        links { 'pthread' }

project 'gmock'
    kind 'StaticLib'
    language 'C++'
    uuid 'afbdba4c-6fac-45fe-b4f9-74b45c12be6e'

    includedirs {
        'gmock',
        'gmock/include',
        'gmock/gtest/include',
    }

    files {
        'gmock/include/*.h',
        'gmock/src/gmock-all.cc',
    }

project 'gmock_main'
    kind 'StaticLib'
    language 'C++'
    uuid '953a5d89-a262-40c6-a7ce-4ab70f1a8565'

    includedirs {
        'gmock/include',
        'gmock/gtest/include',
    }

    files {
        'gmock/src/gmock_main.cc'
    }

    links { 'gtest' }

project 'gtest'
    kind 'StaticLib'
    language 'C++'
    uuid 'c1f27fe8-6a61-4a70-a4c2-e0d34a3343f0'

    includedirs {
        'gmock/gtest',
        'gmock/gtest/include',
    }

    files {
        'gmock/gtest/include/*.h',
        'gmock/gtest/src/gtest-all.cc',
    }

