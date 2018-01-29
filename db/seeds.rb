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
games = [
 { name: "Super Mario", description: "Super Mario World", price: 20.10, user_id: 1, console_id: 1, url: 'https://upload.wikimedia.org/wikipedia/pt/0/06/Super-Mario-World.jpg' },
 { name: "Bomberman", description: "Bomberman IV", price: 10.30, user_id: 3, console_id: 1, url: 'http://img2.game-oldies.com/sites/default/files/packshots/nintendo-super-nes/super-bomberman-3-europe.png'},
 { name: "Top Gear", description: "Top Gear I", price: 8.50, user_id: 2, console_id: 1, url: 'https://www.lukiegames.com/assets/images/SNES/snes_top_gear_p_jfsq5k.jpg'},
 { name: "Pacman", description: "Pacman", price: 8.50, user_id: 2, console_id: 4, url: 'http://underratedretro.com/press/wp-content/uploads/2015/03/box_art.jpeg'}
]

games.each do |game|
 new_game = Game.new(name: game[:name], description: game[:description], price: game[:price], user_id: game[:user_id], console_id: game[:console_id])
 new_game.remote_photo_url = game[:url]
 new_game.save
end
