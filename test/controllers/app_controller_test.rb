require 'test_helper'

class AppControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_index_url
    assert_response :success
  end

  test "should get peliculas" do
    get app_peliculas_url
    assert_response :success
  end

  test "should get personajes" do
    get app_personajes_url
    assert_response :success
  end

  test "should get planetas" do
    get app_planetas_url
    assert_response :success
  end

  test "should get naves" do
    get app_naves_url
    assert_response :success
  end

end
