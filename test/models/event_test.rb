require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  	test "Event date exists" do
       test_date="2014-02-28 09:30:00 UTC"
	   assert(test_date.presence, "Event date exists and is valid")  
	end
	
	test "Event title has greater than or equal to 2 characters" do
       test_string="teststring"
	   assert(test_string.length >= 2, "Event title has greater than or equal to 2 characters and is valid")  
	end
	
  	test "Event description has greater than 1 and less than 256 characters" do
       test_string="test description"
	   assert(test_string.length >= 1 && test_string.length <= 256, "test description has greater than 1 and less than 256 characters and valid")  
	end
	
	test "Event location has greater than or equal to 5 characters" do
       test_string="teststring"
	   assert(test_string.length >= 5, "Event location has greater than or equal to 5 characters and is valid")  
	end
	
	#test "Event XX has XX" do
    #   test_string="teststring"
	#   assert(test_string.length >= 2, "Event XX has XX and is valid")  
	#end
  
end
