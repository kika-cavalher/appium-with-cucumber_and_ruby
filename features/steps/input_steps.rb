Given('I Acess Radio Button page') do
  @nav.tap_hamburger
  @nav.tap_by_text("INPUTS")
  @nav.tap_by_text("BOTÕES DE RADIO")

end

When('I choose the Ruby options') do
  @radio_locator = "//android.widget.RadioButton[contains(@text, 'Ruby')]"
  find_element(xpath: @radio_locator).click
end

Then('This option must be checked') do
  @radio_result = find_element(xpath: @radio_locator)
  expect(@radio_result.checked).to eql "true"
end
