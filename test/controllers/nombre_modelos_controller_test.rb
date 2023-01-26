require "test_helper"

class NombreModelosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nombre_modelo = nombre_modelos(:one)
  end

  test "should get index" do
    get nombre_modelos_url
    assert_response :success
  end

  test "should get new" do
    get new_nombre_modelo_url
    assert_response :success
  end

  test "should create nombre_modelo" do
    assert_difference("NombreModelo.count") do
      post nombre_modelos_url, params: { nombre_modelo: {  } }
    end

    assert_redirected_to nombre_modelo_url(NombreModelo.last)
  end

  test "should show nombre_modelo" do
    get nombre_modelo_url(@nombre_modelo)
    assert_response :success
  end

  test "should get edit" do
    get edit_nombre_modelo_url(@nombre_modelo)
    assert_response :success
  end

  test "should update nombre_modelo" do
    patch nombre_modelo_url(@nombre_modelo), params: { nombre_modelo: {  } }
    assert_redirected_to nombre_modelo_url(@nombre_modelo)
  end

  test "should destroy nombre_modelo" do
    assert_difference("NombreModelo.count", -1) do
      delete nombre_modelo_url(@nombre_modelo)
    end

    assert_redirected_to nombre_modelos_url
  end
end
