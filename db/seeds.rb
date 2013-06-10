# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

operation_types = OperationType.create([{title: "Аренда"}, {title: "Аренда посуточно"}, {title: "Продажа"}])
categories = Category.create([{title: "Дома"}, {title: "Земля"}, {title: "Квартиры"}, {title: "Комерческая недвижимость"}])
estate_types = EstateType.create([{title: "Ангар"}, {title: "Банк"}, {title: "Гараж"}, {title: "Здание"}, {title: "Офис"}, {title: "Ресторан"}])
regions = Region.create([{title: "Одесская"}, {title: "Киевская"}, {title: "Харьковская"}, {title: "Днепропетровская"}, {title: "Херсонская"}])
cities = City.create([{title: "Одесса", region_id: "1"}, {title: "Измаил", region_id: "1"}, {title: "Котовск", region_id: "1"}, {title: "Киев", region_id: "2"}, {title: "Белая Церковь", region_id: "2"}, {title: "Харьков", region_id: "3"}, {title: "Днепропетровск", region_id: "4"}, {title: "Херсон", region_id: "5"}, {title: "Каховка", region_id: "5"}, {title: "Новая каховка", region_id: "5"}])
districts = District.create([{title: "Центр", city_id: "1"}, {title: "Центр", city_id: "2"}, {title: "Центр", city_id: "3"}, {title: "Центр", city_id: "4"}, {title: "Центр", city_id: "5"}, {title: "Киевский", city_id: "1"}, {title: "Киевский", city_id: "2"}, {title: "Киевский", city_id: "3"}, {title: "Киевский", city_id: "4"}, {title: "Киевский", city_id: "5"}])
streets = Street.create([{title: "Шевченка", city_id: "1"}, {title: "Шевченка", city_id: "2"}, {title: "Шевченка", city_id: "3"}, {title: "Шевченка", city_id: "4"}, {title: "Шевченка", city_id: "5"}, {title: "Шевченка", city_id: "6"}, {title: "Шевченка", city_id: "7"}, {title: "Шевченка", city_id: "8"}, {title: "Шевченка", city_id: "9"}, {title: "Шевченка", city_id: "10"}, {title: "Шевченка", city_id: "11"}, {title: "Бунинв", city_id: "1"}, {title: "Садовая", city_id: "1"}])
