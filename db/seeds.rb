# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ipad1   = 'http://cdn3.ipadizate.es/2015/02/ipad-pro-ipad-mini-4-3.jpg'
ipad2   = 'http://store.storeimages.cdn-apple.com/4662/as-images.apple.com/is/image/AppleInc/aos/published/images/i/pa/ipad/mini/ipad-mini-retina-gallery1-2013?wid=900&hei=600&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=4TZjF2'
iphone1 = 'http://store.storeimages.cdn-apple.com/4458/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone6/box/iphone6-box-silver-2014?wid=478&hei=595&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=1441795975484'
iphone2 = 'https://support.apple.com/library/content/dam/edam/applecare/images/en_US/iphone/iphone-iphone6plus-colors.jpg'
Person.create( [ {first_name: 'Alberto', last_name: 'Rak'     , age: 23, id_number: '1129855' },
				 {first_name: 'Jose'   , last_name: 'Gimol'   , age: 21, id_number: '1123445' },
				 {first_name: 'Pablo'  , last_name: 'Timot'   , age: 24, id_number: '9983279' },
				 {first_name: 'Carlos' , last_name: 'Higs'    , age: 22, id_number: '0487192' },
				 {first_name: 'Ramon'  , last_name: 'Gonzales', age: 21, id_number: '0243567' },
				 {first_name: 'Julia'  , last_name: 'Linares' , age: 24, id_number: '1233456' },
				]
			)

Product.create([{name: 'ChessBurger', 
				 price: 3699,
				 typeOf: "burger",
				 description: "Hamburguesa con doble queso, tomate, cebollas morada y lechuga. Viene acompañada de papas fritas y una malteada o refresco",
				 image: "burger.jpg",
				 thumbnail: "http://imagenes.web4pro.es/articulos/256/256/fixed/art_apl-ipad%20pro%20128%20pl%204g_1.jpg"
				},
				{name: 'DobleBurger', 
				 price: 1114299,
				 typeOf: "burger",
				 description: "Exquisita hamburguesa doble con queso, tomate, lechuga, pepinillos",
				 image: "double-burger.png",
				 thumbnail: "http://imagenes.web4pro.es/articulos/256/256/fixed/art_apl-ipad%20pro%20128%20pl%204g_1.jpg"
				},
				{name: 'Jamon con quesito', 
				 price: 33412.99,
				 typeOf: "burger",
				 description: "Exquisita hamburguesa doble con queso, tomate, lechuga, pepinillos y picante",
				 image: "double-burger.png",
				 thumbnail: "http://imagenes.web4pro.es/articulos/256/256/fixed/art_apl-ipad%20pro%20128%20pl%204g_1.jpg"
				},
				{name: 'Perico', 
				 price: 199,
				 typeOf: "breakfast",
				 description: "Exquisita hamburguesa doble con queso, tomate, lechuga y pepinillos",
				 image: "double-burger.png",
				 thumbnail: "http://imagenes.web4pro.es/articulos/256/256/fixed/art_apl-ipad%20pro%20128%20pl%204g_1.jpg"
				},
				## Hotdog
				{name: 'Perro Caliente Tradicional', 
				 price: 699,
				 typeOf: "hotdog",
				 description: "Sabroso perros calientes con salchichas tipo winner.",
				 image: "hotdog.jpg",
				 thumbnail: "http://imagenes.web4pro.es/articulos/256/256/fixed/art_apl-ipad%20pro%20128%20pl%204g_1.jpg"
				}
				]
			)


# Product.create( "name" => "hola", "price" => 488, "date" => DateTime.now.to_date,
# 				images => [])
