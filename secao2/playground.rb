users = [
    {username: "emily", password: "password1"},
    {username: "emily2", password: "password2"}
]

puts "bem vindo"
25.times {print "-"}
puts

def auth_users(username, password, list)
  list.each do |user|
    if user[:username] == username && user[:password] == password
        return user
    end
  end
  return "Informação incorreta"
end


attemps = 1

while attemps < 4
    puts "Username:"
    username = gets.chomp
    puts "Password:"
    password = gets.chomp
    result = auth_users(username, password, users)
    puts result
    puts "Digite n para sair ou outra para continuar"
    input = gets.chomp.downcase

    break if input == "n"
    attemps += 1
end