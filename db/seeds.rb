User.create!(
  email: "test@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Regular User",
)

puts "1 regular user created"

3.times do |topic|
    Topic.create!(
        title: "#Topic #{topic}"
    )
end

puts "3 topics created"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem ipsum dolor amet ramps bitters succulents occupy heirloom authentic banjo synth single-origin coffee readymade. Narwhal crucifix retro, meh flexitarian slow-carb shabby chic hella iceland. Vegan hell of vape umami crucifix XOXO distillery tousled chia asymmetrical aesthetic. Vinyl ennui pour-over bushwick tilde, cardigan shaman freegan. Af mixtape schlitz vegan tofu next level selvage snackwave VHS hoodie beard.",
        topic_id: Topic.last.id
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

5.times do |project_item|
    Project.create!(
        title: "Project title: #{project_item}",
        subtitle: "Ruby on Rails",
        body: "Lorem ipsum dolor amet ramps bitters succulents occupy heirloom authentic banjo synth single-origin coffee readymade. Narwhal crucifix retro, meh flexitarian slow-carb shabby chic hella iceland. Vegan hell of vape umami crucifix XOXO distillery tousled chia asymmetrical aesthetic. Vinyl ennui pour-over bushwick tilde, cardigan shaman freegan. Af mixtape schlitz vegan tofu next level selvage snackwave VHS hoodie beard.",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
    )
end

1.times do |project_item|
    Project.create!(
        title: "Project title: #{project_item}",
        subtitle: "React",
        body: "Lorem ipsum dolor amet ramps bitters succulents occupy heirloom authentic banjo synth single-origin coffee readymade. Narwhal crucifix retro, meh flexitarian slow-carb shabby chic hella iceland. Vegan hell of vape umami crucifix XOXO distillery tousled chia asymmetrical aesthetic. Vinyl ennui pour-over bushwick tilde, cardigan shaman freegan. Af mixtape schlitz vegan tofu next level selvage snackwave VHS hoodie beard.",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
    )
end

puts "6 project items created"

3.times do |technology|
    Project.last.technologies.create!(
        name: "Technology #{technology}"
    )
end

puts "3 technologies created"