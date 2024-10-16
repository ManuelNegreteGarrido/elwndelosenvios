require "application_system_test_case"

class EnviosTest < ApplicationSystemTestCase
  setup do
    @envio = envios(:one)
  end

  test "visiting the index" do
    visit envios_url
    assert_selector "h1", text: "Envios"
  end

  test "should create envio" do
    visit envios_url
    click_on "New envio"

    fill_in "Comuna", with: @envio.comuna
    fill_in "Direccion", with: @envio.direccion
    fill_in "Email", with: @envio.email
    fill_in "Nombre", with: @envio.nombre
    fill_in "Observaciones", with: @envio.observaciones
    fill_in "Telefono", with: @envio.telefono
    click_on "Create Envio"

    assert_text "Envio was successfully created"
    click_on "Back"
  end

  test "should update Envio" do
    visit envio_url(@envio)
    click_on "Edit this envio", match: :first

    fill_in "Comuna", with: @envio.comuna
    fill_in "Direccion", with: @envio.direccion
    fill_in "Email", with: @envio.email
    fill_in "Nombre", with: @envio.nombre
    fill_in "Observaciones", with: @envio.observaciones
    fill_in "Telefono", with: @envio.telefono
    click_on "Update Envio"

    assert_text "Envio was successfully updated"
    click_on "Back"
  end

  test "should destroy Envio" do
    visit envio_url(@envio)
    click_on "Destroy this envio", match: :first

    assert_text "Envio was successfully destroyed"
  end
end
