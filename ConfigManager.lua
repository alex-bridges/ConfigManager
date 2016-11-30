function loadWidth()
  if love.filesystem.exists("width.dat") then
    local size = love.filesystem.getSize("width.dat")
    local data = love.filesystem.read("width.dat", size)
    return tonumber(data)
  end
end

function saveWidth(width)
  return love.filesystem.write("width.dat", tostring(width))
end

function loadHeight()
  if love.filesystem.exists("height.dat") then
    local size = love.filesystem.getSize("height.dat")
    local data = love.filesystem.read("height.dat", size)
    return tonumber(data)
  end
end

function saveHeight(height)
  return love.filesystem.write("height.dat", tostring(height))
end

function loadBorderless()
  local file = "borderless.dat"
  if love.filesystem.exists(file) then
    local size = love.filesystem.getSize(file)
    local data = love.filesystem.read(file, size)
    if data == "true" then
      return true
    else
      return false
    end
  end
end

function saveBorderless(boolean)
  return love.filesystem.write("borderless.dat", tostring(boolean))
end

function loadResizable()
  local file = "resizable.dat"
  if love.filesystem.exists(file) then
    local size = love.filesystem.getSize(file)
    local data = love.filesystem.read(file, size)
    if data == "true" then
      return true
    else
      return false
    end
  end
end

function saveResizable(boolean)
  return love.filesystem.write("resizable.dat", tostring(boolean))
end

function loadMinWidth()
  if love.filesystem.exists("minwidth.dat") then
    local size = love.filesystem.getSize("minwidth.dat")
    local data = love.filesystem.read("minwidth.dat", size)
    return tonumber(data)
  end
end

function saveMinWidth(minwidth)
  return love.filesystem.write("minwidth.dat", tostring(minwidth))
end

function loadMinHeight()
  if love.filesystem.exists("minheight.dat") then
    local size = love.filesystem.getSize("minheight.dat")
    local data = love.filesystem.read("minheight.dat", size)
    return tonumber(data)
  end
end

function saveMinHeight(minheight)
  return love.filesystem.write("minheight.dat", tostring(minheight))
end

function loadFullscreen()
  local file = "fullscreen.dat"
  if love.filesystem.exists(file) then
    local size = love.filesystem.getSize(file)
    local data = love.filesystem.read(file, size)
    if data == "true" then
      return true
    else
      return false
    end
  end
end

function saveFullscreen(boolean)
  return love.filesystem.write("fullscreen.dat", tostring(boolean))
end

function loadFullscreenType()
  local file = "fullscreenType.dat"
  if love.filesystem.exists(file) then
    local size = love.filesystem.getSize(file)
    local data = love.filesystem.read(file, size)
    return data
  end
end

function saveFullscreenType(string)
  return love.filesystem.write("fullscreenType.dat", string)
end

function loadVsync()
  local file = "vsync.dat"
  if love.filesystem.exists(file) then
    local size = love.filesystem.getSize(file)
    local data = love.filesystem.read(file, size)
    if data == "true" then
      return true
    else
      return false
    end
  end
end

function saveVsync(boolean)
  return love.filesystem.write("vsync.dat", tostring(boolean))
end

function loadMSAA()
  local file = "msaa.dat"
  if love.filesystem.exists(file) then
    local size = love.filesystem.getSize(file)
    local data = love.filesystem.read(file, size)
    return tonumber(data)
  end
end

function saveMSAA(number)
  return love.filesystem.write("fullscreen.dat", tostring(number))
end

function loadDisplay()
  local file = "display.dat"
  if love.filesystem.exists(file) then
    local size = love.filesystem.getSize(file)
    local data = love.filesystem.read(file, size)
    return tonumber(data)
  end
end

function saveDisplay(number)
  return love.filesystem.write("display.dat", tostring(number))
end

function loadHighDPI()
  local file = "highdpi.dat"
  if love.filesystem.exists(file) then
    local size = love.filesystem.getSize(file)
    local data = love.filesystem.read(file, size)
    if data == "true" then
      return true
    else
      return false
    end
  end
end

function saveHighDPI(boolean)
  return love.filesystem.write("highdpi.dat", tostring(boolean))
end

function loadWindowPosWidth()
  local file = "windowwidth.dat"
  if love.filesystem.exists(file) then
    local size = love.filesystem.getSize(file)
    local data = love.filesystem.read(file, size)
    return tonumber(data)
  end
end

function saveWindowPosWidth(number)
  return love.filesystem.write("windowwidth.dat", tostring(number))
end

function loadWindowPosHeight()
  local file = "windowheight.dat"
  if love.filesystem.exists(file) then
    local size = love.filesystem.getSize(file)
    local data = love.filesystem.read(file, size)
    return tonumber(data)
  end
end

function saveWindowPosHeight(number)
  return love.filesystem.write("windowheight.dat", tostring(number))
end
