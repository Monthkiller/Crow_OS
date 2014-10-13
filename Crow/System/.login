local username = username
local password = password
term.setBackgroundColor(colors.white)
term.setTextColor(colors.gray)
term.clear()
bg = paintutils.loadImage("/Crow/System/Backgrounds/login")
paintutils.drawImage(bg,1,1)
term.setCursorPos(1,1)
print("Crow : Login")
term.setCursorPos(1,5)
write("Username: ")
input = read()
if input == "username" then
term.setCursorPos(1,5)
term.setTextColor(colors.green)
print("Username is Correct!")
term.setTextColor(colors.gray)
term.setCursorPos(1,6)
write("Password: ")
input = read("*")
if input == "password" then
shell.run("/Crow/System/.desktop")
else
shell.run("/Crow/System/.login")
end
else
shell.run("/Crow/System/.login")
end
