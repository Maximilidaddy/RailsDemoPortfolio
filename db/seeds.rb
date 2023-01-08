3.times do |topic|
Topic.create!(
	title: "Topic #{topic}"
	)

end

10.times do |blog|
Blog.create!(
	title: "My Blog Post #{blog}",
	body: "My Name Is Cleveland Brown And I Am Proud To Be Right Back In My Home Town With My New Family
		There's Old Friends & New Friends & Even a Bear
		Through Good Times & Bad Times
		Its True Love To Share
		And So I Found A Place
		Where Everyone Will Know
		My Happy Mustache Face
		This Is The Cleveland Show!",
		topic_id: Topic.last.id
	)
end

puts "10 blogs created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilize: 15
		)
end

puts "5 skills created"

9.times do |portfolio_item|
	Portfolio.create!(
			title: "My Portfolio title: #{portfolio_item}",			
			subtitle: "Ruby on Rails",
			body: "My Name Is Cleveland Brown
				And I Am Proud To Be
				Right Back In My Home Town
				With My New Family
				There's Old Friends & New Friends & Even a Bear
				Through Good Times & Bad Times
				Its True Love To Share
				And So I Found A Place
				Where Everyone Will Know
				My Happy Mustache Face
				This Is The Cleveland Show!",

			main_image: "https://via.placeholder.com/650x400/O%20https://placeholder.com/",
			thumb_image: "https://via.placeholder.com/350x200/O%20https://placeholder.com/"
		)
end
	

1.times do |portfolio_item|
	Portfolio.create!(
			title: "My Portfolio title: #{portfolio_item}",			
			subtitle: "Angular",
			body: "My Name Is Cleveland Brown
				And I Am Proud To Be
				Right Back In My Home Town
				With My New Family
				There's Old Friends & New Friends & Even a Bear
				Through Good Times & Bad Times
				Its True Love To Share
				And So I Found A Place
				Where Everyone Will Know
				My Happy Mustache Face
				This Is The Cleveland Show!",

			main_image: "https://via.placeholder.com/650x400/O%20https://placeholder.com/",
			thumb_image: "https://via.placeholder.com/350x200/O%20https://placeholder.com/"
		)
end
	puts "10 portfolios created"

3.times do |tech|
	Portfolio.last.technologies.create!(
			name: "Technology #{tech}"
	
	)

end

puts "3 Technologies created"
