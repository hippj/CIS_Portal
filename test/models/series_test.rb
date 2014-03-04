# TUTORIAL:  http://guides.rubyonrails.org/testing.html

require 'test_helper'

class SeriesTest < ActiveSupport::TestCase
	# test "the truth" do
	#   assert true
	# end
  
	test "Series title has greater than or equal to 2 characters" do
       test_string="test title"
	   assert(test_string.length >= 2, "test title is  greater than or equal to 2 characters in length and valid")  
	end
  
  	test "Series description has greater than 1 and less than 256 characters" do
       test_string="test description"
	   assert(test_string.length >= 1 && test_string.length <= 256, "test description has greater than 1 and less than 256 characters and valid")  
	end
	
	test "series must have a title" do
		series = Series.new()
		assert_not series.save, "Created an empty Series"
	end
	
	test "series title cannot be empty" do
		series = Series.new( title: " " );
		assert_not series.save, "Series title is just whitespace"
	end
	
	test "series must have a description" do
		series = Series.new( text: " " );
		assert_not series.save, "Series description is empty"
	end
	
	#test "Series XX has XX" do
    #   test_string="teststring"
	#   assert(test_string.length >= 2, "Series XX has XX and valid")  
	#end
	

  
  
	#test "Title has less than 2 characters" do
	#       test_string="Workshop"
	#	   assert(test_string.length < 2, "test string is less than 2 char in length and not valid")
		#test_string2="This WorkShop Works on Code Review Techniques"
		#Series = Series.new title: test_string, description: test_string2
		#assert !series.save, "test string is 1 char and not valid"       
	#end

	# test "Every Thing is good to go" do
	#      test_string="Code Review Workshop"
	#       test_string2="This WorkShop Works on Code Review Techniques"
	#       assert(test_string.length>=2, "test string is valid")
	#       Series = Series.new title: test_string, description: test_string2
	#       assert_not Series.save, "what"       
	# end

	# test "no description" do
	#       test_string="Code Review Workshop"
	#       test_string2=" "
	#       assert(test_string.length>=2, "test string is valid")
	#       Series = Series.new title: test_string, description: test_string2
	#       assert_not Series.save, "what"       
	# end
 
 
end
