desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do
  starting = Time.now
  p "Creating sample data"

  if Rails.env.development?

    User.destroy_all

  end

  usernames = Array.new  {Faker::Name.first_name}

  usernames << "Alice"
  usernames << "Bob"
  
 usernames.each do |username|
    User.create(
      email: "#{username}@example.com",
      password: "password",

    )
  end
  p "#{User.count} users have been created."

ending = Time.now

p "It took #{(ending - starting).to_i} seconds to create sample data"
p "There are now #{User.count} users."

end
