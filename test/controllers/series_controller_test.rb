require 'test_helper'

class SeriesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  
	# Use 'setup' because some of these tests need an already-initialized model to work.
  	setup do
		session[:user_id] = "admin"
		@series = series(:one)
	end
  
	test "should get index" do
		get :index
		assert_response :success
		assert_not_nil assigns(:series)
	end
	
	test "should get new" do
		get :new
		assert_response :success
	end
	
	test "should create series" do
		assert_difference('Series.count') do
			series :create, series: { title: "Test", text: "Some text"}
		end
		assert_redirected_to series_path(assigns(:series))
	end
	
	test "Should not create empty series" do
		assert_no_difference('Series.count') do
			series :create, series: { title: "", text: ""}
		end
	end
	
	test "Should show series" do
		get :show, id: @series
		assert_response :success
	end
	
	test "should get edit" do
		get :edit, id: @series
		assert_response :success
	end
	
	test "should update series" do
		#series = Series.new( title: "Example", text: "Example" );
		patch :update, id: @one, series: { title: "Title change", text: "changed description" }
		assert_redirected_to series_path(assigns(:series))
	end
	
	test "should destroy series" do
		assert_difference('Series.count') do
			delete :destroy, id: @series
		end
		assert_redirected_to series_path
	end
end
