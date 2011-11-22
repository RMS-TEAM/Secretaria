require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get antecedentes" do
    get :antecedentes
    assert_response :success
  end

  test "should get participantes" do
    get :participantes
    assert_response :success
  end

end
