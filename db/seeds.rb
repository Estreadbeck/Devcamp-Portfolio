# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
	Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque turpis turpis, malesuada vitae tellus a, feugiat ullamcorper nibh. Proin malesuada tempus tortor. Aenean vehicula imperdiet augue at hendrerit. Fusce hendrerit justo diam, sed lacinia leo ultricies a. Proin luctus magna leo, euismod mollis libero facilisis vel. Sed ut efficitur odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus ipsum purus, porttitor ornare vehicula et, rhoncus non justo. Aliquam erat diam, volutpat at pretium condimentum, vestibulum eget sem. Cras ut purus non urna pellentesque porta at in lacus. Etiam condimentum eros pellentesque diam accumsan, quis commodo turpis pretium. Integer augue eros, pretium placerat consectetur sed, efficitur nec nunc. Aliquam dui nulla, aliquet eget turpis a, ultricies dignissim orci."
	)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end

puts "5 skills created"

9.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}" ,
		subtitle: "My great service",
		body: "Nulla at vestibulum felis. Nam scelerisque ligula eget bibendum rutrum. Curabitur eget pulvinar dolor. Duis faucibus libero dolor, sed vehicula odio rutrum vitae. Suspendisse vitae dui lacus. Integer risus quam, tincidunt eget condimentum ut, lobortis ut magna. Nunc aliquet eros diam, et semper elit interdum volutpat.",
		main_image: "http://via.placeholder.com/350x200",
		thumb_image: "http://via.placeholder.com/600x400"
		)
end

puts "9 portfolio items created"