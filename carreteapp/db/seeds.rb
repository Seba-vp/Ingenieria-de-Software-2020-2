# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comuna.destroy_all
#Party.destroy_all
#User.destroy_all
#Post.destroy_all
#Service.destroy_all


Comuna.create([{name: 'Las Condes'},{name: 'Pirque'},{name: 'Peñalolen'},{name: 'San Joaquin'},{name: 'Maipu'},{name: 'Colina'},{name: 'San Bernardo'},{name: 'San Fernando'},{name: 'San Vicente'},{name: 'Las Cabras'},{name: 'Lo Barnechea'},{name: 'Lampa'},{name: 'Swamp'},{name: 'San Andreas'},{name: 'Santiago'},{name: 'Pedro Aguirre Cerda'},{name: 'Ñuñoa'},{name: 'Santa Cruz'},{name: 'Lonquimay'},{name: 'Villarrica'},{name: 'Rancagua'},{name: 'Springfield'}])

#Party.create([{title: 'Cumpleaños Shrek', description: 'cumpleaños ogro', address: 'Swamp s/n', picture: 'https://pm1.narvii.com/7052/3993a4b42c6bb368c240c664e7a76e3e39d122a6r1-738-956v2_uhq.jpg', id_comuna: 12, base_cost: 10, total_cost: 100, max_cap: 20, date:'2000-12-31',date_final: '2020-10-10',id_creator:0}])
#Party.create([{title: 'Grove Street', description: 'home', address: 'GS 101', picture: '', id_comuna: 13, base_cost: 10, total_cost: 200, max_cap: 24, date:'2000-12-31',date_final: '2021-10-10', id_creator:1}])

#User.create([{email: 'jizagal@uc.cl',name: 'Javier Zagal',age: 22, phone: 62076152, picture: 'https://scontent.fscl13-1.fna.fbcdn.net/v/t1.0-9/80575446_10220837570111502_3339519273742630912_n.jpg?_nc_cat=110&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeG-7HNsn-t_d79Z0GnwDolGACkH2t7AgRwAKQfa3sCBHFaTfJ4q0r2dNyRxO5muoSk&_nc_ohc=zHjdL2LgIwoAX9FKdP7&_nc_ht=scontent.fscl13-1.fna&oh=63928fb54c70ab1930273c351271ca17&oe=5FE18FCD',id_comuna: 10, service_enable: 'T'}])

#Post.create([{title: 'TOP 10 carretes 2020', content: 'Aqui un listado de los mejores carretes de este 2020: ', picture: 'https://cuandoduermes.com/wp-content/uploads/2018/09/so%C3%B1ar-con-fiesta-11.jpg'}])

#Service.create([{name: 'Copete y Barman', description: 'Barman y copete a un precio modico', max_cap: 100, price: 10000, picture: 'https://www.cocinayvino.com/wp-content/uploads/2017/11/deca%CC%81logo-del-barman.jpg', stars: 5, id_creador: 1, id_comuna: 5}])
