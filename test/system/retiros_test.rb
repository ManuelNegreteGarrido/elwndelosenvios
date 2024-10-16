require "application_system_test_case"

class RetirosTest < ApplicationSystemTestCase
  setup do
    @retiro = retiros(:one)
  end

  test "visiting the index" do
    visit retiros_url
    assert_selector "h1", text: "Retiros"
  end

  test "should create retiro" do
    visit retiros_url
    click_on "New retiro"

    fill_in "Direccion", with: @retiro.direccion
    fill_in "Email", with: @retiro.email
    fill_in "Nombre", with: @retiro.nombre
    fill_in "Telefono", with: @retiro.telefono
    click_on "Create Retiro"

    assert_text "Retiro was successfully created"
    click_on "Back"
  end

  test "should update Retiro" do
    visit retiro_url(@retiro)
    click_on "Edit this retiro", match: :first

    fill_in "Direccion", with: @retiro.direccion
    fill_in "Email", with: @retiro.email
    fill_in "Nombre", with: @retiro.nombre
    fill_in "Telefono", with: @retiro.telefono
    click_on "Update Retiro"

    assert_text "Retiro was successfully updated"
    click_on "Back"
  end

  test "should destroy Retiro" do
    visit retiro_url(@retiro)
    click_on "Destroy this retiro", match: :first

    assert_text "Retiro was successfully destroyed"
  end
end
