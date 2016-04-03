# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Charla.create(tema: 'Django con BDD', expositor: 'Lic. Benjamin Perez')
Charla.create(tema: 'Seguridad Infomatica', expositor: 'Melisa Carballo')
Charla.create(tema: 'GIS con Software Libre', expositor: 'Geovanna Lizette Gil Terceros')
Charla.create(tema:'Initial OS', expositor:'Ing. Rodolfo Negron Manchego')
Charla.create(tema:'Desarrollo Web Ruby on Rails', expositor:'Ing. Pablo Sanabria')
Charla.create(tema:'Produccion Multimedia con Software Libre', expositor:'Flavio Huanca Rodriguez')
Charla.create(tema:'Windows manager en linux', expositor:'Owen Wilson Mamani')
Charla.create(tema:'Servicios Linux', expositor:'Owen Wilson Mamani')
Charla.create(tema:'Linux en raspberry', expositor:'Owen Wilson Mamani')
Charla.create(tema:'Que es Software Libre', expositor:'Igor Buergo')
Charla.create(tema:'Reparando al Pinguino Solucion EFI en linux', expositor:'Jorge Encinas')
Charla.create(tema:'Ruby for Dummies', expositor:'Irvin Cossio Chavalier')
Charla.create(tema:'Front end the user is drunk', expositor:'Irvin Cossio Chavalier')
Charla.create(tema:'Software libre en la empresa. Odoo Development', expositor:'Rafael Ramirez Caero')
Charla.create(tema: 'Radare 2: framework de ingeniería inversa', expositor: 'Ing. Alejandro Oquendo Muñoz')

Usuario.create!(email: 'irvin@scesi.org', password: '.flisol.',password_confirmation: '.flisol.')