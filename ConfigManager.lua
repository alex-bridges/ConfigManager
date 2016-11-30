--[[
Copyright (c) 2016

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

Except as contained in this notice, the name(s) of the above copyright holders
shall not be used in advertising or otherwise to promote the sale, use or
other dealings in this Software without prior written authorization.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
]]--

-- Edit these to whatever default values you want. Below are the default values.
local defaultConfig = {
  "function love.conf(t)",
  "  t.identity = nil",
  "  t.version = \"0.10.2\"",
  "  t.console = false",
  "  t.accelerometerjoystick = true",
  "  t.externalstorage = false",
  "  t.gammacorrect = false",
  "  \n",
  "  t.window.title = \"Untitled\"",
  "  t.window.icon = nil",
  "  t.window.width = 800",
  "  t.window.height = 600",
  "  t.window.borderless = false",
  "  t.window.resizable = false",
  "  t.window.minwidth = 1",
  "  t.window.minheight = 1",
  "  t.window.fullscreen = false",
  "  t.window.fullscreentype = \"desktop\"",
  "  t.window.vsync = true",
  "  t.window.msaa = 0",
  "  t.window.display = 1",
  "  t.window.highdpi = false",
  "  t.window.x = nil",
  "  t.window.y = nil",
  "  \n",
  "  t.modules.audio = true",
  "  t.modules.event = true",
  "  t.modules.graphics = true",
  "  t.modules.image = true",
  "  t.modules.joystick = true",
  "  t.modules.keyboard = true",
  "  t.modules.math = true",
  "  t.modules.mouse = true",
  "  t.modules.physics = true",
  "  t.modules.sound = true",
  "  t.modules.system = true",
  "  t.modules.timer = true",
  "  t.modules.touch = true",
  "  t.modules.video = true",
  "  t.modules.window = true",
  "  t.modules.thread = true"
  }

local currentConfig = {}

local function readConfig()
  local config = {}
  local count = 1
  for l in io.lines("conf.lua") do
    config[count] = l
    count = count + 1
  end
    currentConfig = config
end

local function writeConfig(config)
  local file = io.open("conf.lua", "w")
  io.output(file)
  for i=1, #config do
    file:write(config[i], "\n")
  end
  file:close()
end

function restoreDefaultConfig()
  writeConfig(defaultConfig)
end

-- Changes the resolution. Can change only width or height by passing nil to
-- the argument you do not want to change.
function changeResolutionConfig(width, height)
  local currentWidth, currentHeight, flags = love.window.getMode()
  readConfig()
  currentConfig[11] = "  t.window.width = "..(width or currentWidth)
  currentConfig[12] = "  t.window.height = "..(height or currentHeight)
  writeConfig(currentConfig)
end

-- Changes borderless mode. Can pass a string or boolean if you want.
function changeBorderlessConfig(boolean)
  readConfig()
  currentConfig[13] = "  t.window.borderless = "..tostring(boolean)
  writeConfig(currentConfig)
end

function changeResizableConfig(boolean)
  readConfig()
  currentConfig[14] = "  t.window.resizable = "..tostring(boolean)
  writeConfig(currentConfig)
end

function changeMinimumResolutionConfig(width, height)
  local currentWidth, currentHeight, flags = love.window.getMode()
  readConfig()
  currentConfig[15] = "  t.window.minwidth = "..(width or flags.minwidth)
  currentConfig[16] = "  t.window.minheight = "..(height or flags.minheight)
  writeConfig(currentConfig)
end

function changeFullscreenConfig(boolean)
  readConfig()
  currentConfig[17] = "  t.window.fullscreen = "..tostring(boolean)
  writeConfig(currentConfig)
end

function changeFullscreenTypeConfig(string)
  readConfig()
  currentConfig[18] = "  t.window.fullscreentype = "..string
  writeConfig(currentConfig)
end

function changeVsyncConfig(boolean)
  readConfig()
  currentConfig[19] = "  t.window.vsync = "..tostring(boolean)
  writeConfig(currentConfig)
end

function changeMSAAConfig(number)
  readConfig()
  currentConfig[20] = "  t.window.msaa = "..number
  writeConfig(currentConfig)
end

function changeDisplayConfig(number)
  readConfig()
  currentConfig[21] = "  t.window.display = "..number
  writeConfig(currentConfig)
end

function changeHighDPIConfig(boolean)
  readConfig()
  currentConfig[22] = "  t.window.highdpi = "..tostring(boolean)
  writeConfig(currentConfig)
end

function changeWindowPositionConfig(x, y)
  readConfig()
  currentConfig[23] = "  t.window.x = "..x
  currentConfig[24] = "  t.window.y = "..y
  writeConfig(currentConfig)
end
