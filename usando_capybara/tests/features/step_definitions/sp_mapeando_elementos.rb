Quando("preencho o formulário assim") do
    @mapeando = MapeandoElementoPage.new

    @mapeando.load

    @mapeando.preencher 
  end