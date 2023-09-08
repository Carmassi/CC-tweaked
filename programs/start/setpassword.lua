print("What was your most recent password?: ")
local answer = read("*")

local password = "password.txt"

local file = fs.open(password, "r")
local fileContents = file.readAll()
file.close()

if string.find(fileContents, answer) then
    print("correct answer.")
else
    print("Wrong dumb dumb, turning off in 2 seconds.")
    os.sleep(2)
    os.shutdown()
end
print("What would you like your new password to be?: ")
local newpassword = read()
local file = fs.open(password, "w")
file.write(newpassword)
file.close()
print("Your password is now: ".. newpassword ..".")
term.clear()
term.setCursorPos(1, 1)
