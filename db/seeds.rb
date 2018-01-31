Console.destroy_all
puts "Creating Consoles ..."
Console.create!(name: "Nintendo")
Console.create!(name: "Master System")
Console.create!(name: "Mega Drive")
Console.create!(name: "Atari")

User.destroy_all
puts "Creating Users ..."
users = [
  {email: "daniel.phr@gmail.com", password: "Luigi123", first_name: "Daniel", last_name: "Rodrigues", address: "Lakeside", cpf: "111.111.111-11", city: "Brasilia", url: "http://res.cloudinary.com/danielphr/image/upload/v1517412297/vr2bd99d59tdgziorbmz.jpg"},
  {email: "pedro@pedro.com", password: "Mario123", first_name: "Pedro", last_name: "Borges", address: "Rua de Cima", cpf: "222.222.222-22", city: "Belo Horizonte"},
  {email: "mari@mari.com", password: "Peach123", first_name: "Mari", last_name: "Mattana", address: "Rua de Baixo", cpf: "333.333.333-33", city: "Belo Horizonte"}
]
users.each do |user|
 new_user = User.new(email: user[:email], password: user[:password], first_name: user[:first_name], last_name: user[:last_name], address: user[:address], cpf: user[:cpf], city: user[:city])
 new_user.remote_photo_url = user[:url]
 new_user.save
end

Game.destroy_all
puts "Creating Games ..."
games = [
 { name: "Super Mario", description: "Super Mario World", price: 20.10, user_id: 1, console_id: 1, url: 'https://upload.wikimedia.org/wikipedia/pt/0/06/Super-Mario-World.jpg' },
 { name: "Bomberman", description: "Bomberman IV", price: 10.30, user_id: 3, console_id: 1, url: 'http://img2.game-oldies.com/sites/default/files/packshots/nintendo-super-nes/super-bomberman-3-europe.png'},
 { name: "Top Gear", description: "Top Gear I", price: 8.50, user_id: 2, console_id: 1, url: 'https://www.lukiegames.com/assets/images/SNES/snes_top_gear_p_jfsq5k.jpg'},
 { name: "Pacman", description: "Pacman", price: 8.50, user_id: 2, console_id: 4, url: 'http://underratedretro.com/press/wp-content/uploads/2015/03/box_art.jpeg'},
 { name: "Donkey Kong", description: "Donkey Kong 1", price: 12.50, user_id: 2, console_id: 1, url: 'http://res.cloudinary.com/danielphr/image/upload/v1517249669/p31afbzeimtcpdmrnbdn.jpg'},
 { name: "Sonic", description: "Sonic The Hedgehog", price: 13.50, user_id: 2, console_id: 2, url: 'http://res.cloudinary.com/danielphr/image/upload/v1517417786/aisb8fecuhvm35xm11ve.jpg'},
 { name: "Street Fighter", description: "Street Fighter II", price: 18.50, user_id: 3, console_id: 3, url: 'http://res.cloudinary.com/danielphr/image/upload/v1517418069/pyx0muzoekzu2k6urzas.webp'},
 { name: "Mortal Kombat", description: "Mortal Kombat III", price: 18.50, user_id: 3, console_id: 3, url: 'http://res.cloudinary.com/danielphr/image/upload/v1517238926/ixbmaklr8yezo2nnn4gx.jpg'}
]

games.each do |game|
 new_game = Game.new(name: game[:name], description: game[:description], price: game[:price], user_id: game[:user_id], console_id: game[:console_id])
 new_game.remote_photo_url = game[:url]
 new_game.save
end
