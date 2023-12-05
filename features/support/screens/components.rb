class Navigator

  def tap_hamburger
    hamburguer = '//android.widget.ImageButton[@content-desc="Open navigation drawer"]'
    find_element(xpath: hamburguer).click
  end

  def list
    menuId = 'io.qaninja.android.twp:id/rvNavigation'
    menu = find_element(id: menuId)

    return menu
  end
end
