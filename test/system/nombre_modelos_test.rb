require "application_system_test_case"

class NombreModelosTest < ApplicationSystemTestCase
  setup do
    @nombre_modelo = nombre_modelos(:one)
  end

  test "visiting the index" do
    visit nombre_modelos_url
    assert_selector "h1", text: "Nombre modelos"
  end

  test "should create nombre modelo" do
    visit nombre_modelos_url
    click_on "New nombre modelo"

    click_on "Create Nombre modelo"

    assert_text "Nombre modelo was successfully created"
    click_on "Back"
  end

  test "should update Nombre modelo" do
    visit nombre_modelo_url(@nombre_modelo)
    click_on "Edit this nombre modelo", match: :first

    click_on "Update Nombre modelo"

    assert_text "Nombre modelo was successfully updated"
    click_on "Back"
  end

  test "should destroy Nombre modelo" do
    visit nombre_modelo_url(@nombre_modelo)
    click_on "Destroy this nombre modelo", match: :first

    assert_text "Nombre modelo was successfully destroyed"
  end
end
