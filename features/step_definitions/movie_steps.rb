Given /^the following movies exist:$/ do |table|
  table.hashes.each do |movie|
    Movie.create!(movie)
  end  
end

Then /^the director of "(.*?)" should be "(.*?)"$/ do |arg1, arg2|
  movie_director = Movie.find_by_director('#{arg1}')
  movie_director == arg2
end

#Other is use step definition in web_step.rb and paths.rb
