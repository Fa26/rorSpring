require 'test_helper'

class StrawberriesControllerTest < ActionDispatch::IntegrationTest
	test 'render a list of strawberies'  do
		get strawberries_path

		assert_response :success
		assert_select '.product',2
		
	end

	test 'render  a detail product page' do 
		get strawberries_path(strawberries(:watermelon))

		assert_response :success
		assert_select '.title','watermelon'

		
	end

	test 'render a new product form' do 
		get strawberrie_new_path

		assert_response :success
		assert_select :form
		
	end

	test 'allow to creat new' do
		post  strawberries_path, params:{
			strawberrie:{
				title: "pot",
				opinion: "colorfull"
			}
		}
		assert_redirected_to strawberries_path
		assert_equal flas[:notice] ,'Tu producto se ha creado correctamente'
		
	end

	test 'dont allow empty spaces' do
		post  strawberries_path, params:{
			strawberrie:{
				title: "",
				opinion: "colorfull"
			}
		}
		assert_response :unprocessable_entity #error 422
		
	end
end