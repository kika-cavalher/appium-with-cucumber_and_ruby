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

Given('I Acess Checkbox page') do
  @nav.tap_hamburger
  @nav.tap_by_text("INPUTS")
  @nav.tap_by_text("CHECKBOX")
end

When('I choose on checkbox the Ruby options') do
  @check_locator = "//android.widget.CheckBox[contains(@text, 'Ruby')]"
  find_element(xpath: @check_locator).click
  sleep 1
end

Then('This option must be checked on checkbox') do
  @check_result = find_element(xpath: @check_locator)
  expect(@check_result.checked).to eql "true"
end

When('I choose all appium tag options:') do |table|
  @techs = table.hashes

  @techs.each do |item|
    check_locator = "//android.widget.CheckBox[contains(@text, '#{item["tech"]}')]"
    find_element(xpath: check_locator).click
  end
  sleep 1
end

Then('All these options must be checked') do
  @techs.each do |item|
    check_locator = "//android.widget.CheckBox[contains(@text, '#{item["tech"]}')]"
    check_result = find_element(xpath: check_locator)
    expect(check_result.checked).to eql "true"
  end
end
