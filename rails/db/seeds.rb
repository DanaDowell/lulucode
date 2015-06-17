# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Market.create(title: 'Gospel Flat Farmstand');
Market.create(title: 'Star Route Farms Farm Stand');
Market.create(title: 'whatupyo');

Weekday.create(name: 'Monday');
Weekday.create(name: 'Tuesday', market_ids: [3]);
Weekday.create(name: 'Wednesday');
Weekday.create(name: 'Thursday');
Weekday.create(name: 'Friday');
Weekday.create(name: 'Saturday');
Weekday.create(name: 'Sunday', market_ids: [1,2]);
Weekday.create(name: 'all');

