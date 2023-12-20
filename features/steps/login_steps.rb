Given('I Acess Login page') do
  @nav.tap_hamburger
  @nav.tap_by_text("FORMS")
  @nav.tap_by_text("LOGIN")
end

When('Submit my credentials') do |table|
  #Hash é quando transforma tabela em objeto (dados/dictionary. Chave e valor.)
  user = table.rows_hash
  log(user)
  @login.signin(user[:email], user[:pass])
end

Then('I see the notification: {string}') do |notice|
  # log(get_source) pega o html da tela.
  expect(@login.toast.text).to eql notice

end
