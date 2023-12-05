Quando('acesso o Menu') do
  hamburguer = '//android.widget.ImageButton[@content-desc="Open navigation drawer"]'

  find_element(xpath: hamburguer).click
end

Então('vejo a lista de opções de navegação') do
  menuId = 'io.qaninja.android.twp:id/rvNavigation'

  menu = find_element(id: menuId)
  expect(menu.displayed?).to be true
end
