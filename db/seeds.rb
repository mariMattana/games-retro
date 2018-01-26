Console.destroy_all
Console.create!(name: "Nintendo")
Console.create!(name: "Master System")
Console.create!(name: "Mega Drive")
Console.create!(name: "Atari")
User.destroy_all
User.create!(email: "daniel.phr@gmail.com", password: "Luigi123", first_name: "Daniel", last_name: "Rodrigues", address: "Lakeside", cpf: "111.111.111-11", city: "Brasilia")
User.create!(email: "pedro@pedro.com", password: "Mario123", first_name: "Pedro", last_name: "Borges", address: "Rua de Cima", cpf: "222.222.222-22", city: "Belo Horizonte")
User.create!(email: "mari@mari.com", password: "Peach123", first_name: "Mari", last_name: "Mattana", address: "Rua de Baixo", cpf: "333.333.333-33", city: "Belo Horizonte")
Game.destroy_all
Game.create!(name: "Super Mario", description: "Super Mario World", price: 20.10, user_id: 1, console_id: 1)
Game.create!(name: "Pacman", description: "Pacman", price: 8.50, user_id: 2, console_id: 4)
Game.create!(name: "Bomberman", description: "Bomberman IV", price: 10.30, user_id: 3, console_id: 1)
