local function solution(name)
    _G.solution(name)
        configurations { 'debug', 'release' }
        if os.is('win32') then
            platforms { 'x64', 'Win32' }
            filter { 'platforms:Win32' }
                system 'Windows'
                archictecture 'x32'
        else
            platforms { 'x64', 'x32' }
        end

        location 'build'
        targetdir 'build/%{cfg.buildcfg}_%{cfg.architecture}'
        objdir 'build/%{cfg.buildcfg}_%{cfg.architecture}/obj/%{cfg.buildtarget.name}'

        flags {
            'Symbols',
        }

        if os.is('win32') then
            flags 'Unicode'
        else
            buildoptions { '-std=c++11' }
        end

        configuration 'release'
            optimize 'Full'
        configuration '*'
end

return {
    solution = solution,
}
