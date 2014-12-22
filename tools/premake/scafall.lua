local function solution(name)
    _G.solution(name)
        configurations { 'debug', 'release' }

        location 'build'
        targetdir 'build/%{cfg.buildcfg}_%{cfg.architecture}'
        objdir 'build/%{cfg.buildcfg}_%{cfg.architecture}/obj/%{cfg.buildtarget.name}'

        flags {
            'Symbols',
        }

        if os.is('windows') then
            flags 'Unicode'
        else
            buildoptions { '-std=c++11' }
        end

        configuration 'release'
            optimize 'Full'
        configuration '*'

        if os.is('windows') then
            platforms { 'x64', 'Win32' }
            filter { 'platforms:Win32' }
                system 'Windows'
                architecture 'x32'
        else
            platforms { 'x64', 'x32' }
        end
end

local function pchheader(header)
    local h
    if os.is('windows') then
        h = header
    else
        h = path.getabsolute(header)
    end
    _G.pchheader(h)
end

local function pchsource(source)
    local s
    if os.is('windows') then
        s = source
    else
        s = path.getabsolute(source)
    end
    _G.pchsource(s)
end

return {
    solution = solution,
    pchheader = pchheader,
    pchsource = pchsource
}
