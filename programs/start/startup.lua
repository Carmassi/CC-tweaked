os.pullEvent = os.pullEventRaw

print("Whats the password?: ")
local answer = read("*")

local password = 'https://github.com/Carmassi/CC-tweaked/blob/e3121ada321e37bad0d2504c401e5a3198a82b0c/programs/start/password.txt'
local file = fs.open(password, "r")
local fileContents = file.readAll()
file.close()
if string.find(fileContents, answer, 1, true) then
    print("correct answer. Cancelling shutdown.")
    os.sleep(2)
    term.clear()
    term.setCursorPos(1, 1)
    return
else
    print("Cai fora malandro, desligando em ")
    write('3')
    os.sleep(1)
    write('..2')
    os.sleep(1)
    write('..1')
    os.sleep(1)
    os.shutdown()
end
local running = true
while running do
   local event = os.pullEventRaw ()
   if event == "terminate" then
       running = false
   end
end
