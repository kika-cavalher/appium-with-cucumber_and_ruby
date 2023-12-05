When('I access the menu') do
  @nav.tap_hamburger

end

Then('I see the list of navigation options') do
  expect(@nav.list.displayed?).to be true
end
