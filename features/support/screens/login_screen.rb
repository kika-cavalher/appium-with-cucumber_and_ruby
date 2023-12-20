#Chamar essa pagina no hooks.

class LoginScreen

  def signin(email, pass)
    find_element(id: "io.qaninja.android.twp:id/etEmail").send_keys(email)
    find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(pass)
    find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
  end

  def toast
    return find_element(xpath: "//android.widget.Toast")
  end

end
