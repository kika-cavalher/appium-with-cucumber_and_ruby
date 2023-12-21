Given('I access the screen simple click') do
  @nav.tap_hamburger
  @nav.tap_by_text("BOTÕES")
  @nav.tap_by_text("CLIQUE SIMPLES")
end

When('Do the simple click') do
  @buttonSimples_locator = "io.qaninja.android.twp:id/short_click"
  find_element(:id, @buttonSimples_locator).click
end

Then('Must be show the text : {string}') do |string|
  expect(@toaster.toast.text).to eql string
end

Given('I access the screen long click') do
  @nav.tap_hamburger
  @nav.tap_by_text("BOTÕES")
  @nav.tap_by_text("CLIQUE LONGO")
end

When('Do the long click') do
  @buttonLong = find_element(:id, "io.qaninja.android.twp:id/long_click")
  Appium::TouchAction.new.press(element: @buttonLong).wait(2000).release.perform

end

Then('Must be show the text in button : {string}') do |string|
  expect(@buttonLong.text).to eql string
end
