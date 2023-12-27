Given('I access the screen Avengers') do
  # @nav.tap_hamburger
  # @nav.tap_by_text("AVENGERS")
  @nav.tap_by_text("LISTA")
end

# start_x = Posição inicial na horizontal.
# start_y = Posição inicial na vertical.
# offset_x = Posição final na horizontal.
# offset_x = Posição final na vertical.
# duration = Em milesecundos.

When('I delete Firts Avenger') do
  # Verificar se esta na tela correta.
  find_element(id: "io.qaninja.android.twp:id/rvList")

  # Realizar o swipe
  coord = {start_x:0.93, start_y:0.18, offset_x:0.48, offset_y:0.18, duration: 2000 }
  Appium::TouchAction.new.swipe(coord).perform

  # Excluir o avenger.
  find_element(id: "io.qaninja.android.twp:id/btnRemove").click

end

When('I delete Second Avenger') do
  find_element(id: "io.qaninja.android.twp:id/rvList")
  coord = {start_x:0.93, start_y:0.34, offset_x:0.48, offset_y:0.34, duration: 2000 }
  Appium::TouchAction.new.swipe(coord).perform
  find_element(id: "io.qaninja.android.twp:id/btnRemove").click
end

When('I change third position from firts position') do
  find_element(id: "io.qaninja.android.twp:id/rvList")
  coord = {start_x:0.10, start_y:0.51, offset_x:0.10, offset_y:0.18, duration: 2000 }
  Appium::TouchAction.new.swipe(coord).perform
end

# When('I delete Third Avenger') do
#   find_element(id: "io.qaninja.android.twp:id/rvList")
#   coord = {start_x:0.93, start_y:0.50, offset_x:0.48, offset_y:0.50, duration: 2000 }
#   Appium::TouchAction.new.swipe(coord).perform
# end

# When('I delete Fourth Avenger') do
#   find_element(id: "io.qaninja.android.twp:id/rvList")
#   coord = {start_x:0.93, start_y:0.65, offset_x:0.48, offset_y:0.65, duration: 2000 }
#   Appium::TouchAction.new.swipe(coord).perform
# end


# When('I delete Fifth Avenger') do
#   find_element(id: "io.qaninja.android.twp:id/rvList")
#   coord = {start_x:0.93, start_y:0.80, offset_x:0.48, offset_y:0.80, duration: 2000 }
#   Appium::TouchAction.new.swipe(coord).perform
#   find_element(id: "io.qaninja.android.twp:id/btnRemove").click
# end


Then('Must be show the warning: {string}') do |string|
  @textWarning = find_element(:id, "io.qaninja.android.twp:id/snackbar_text")
  expect(@textWarning.text).to eql string
end
