Quando("clico no botao") do
    visit '/buscaelementos/botoes'
    find('#teste').click
  end
  
  Entao("verifico se o texto apareceu na tela com sucesso.") do
    #page.assert_text(text, 'Você Clicou no Botão!')
    #ou page.has_text?(Você Clicou no Botão!) ou 
    have_text('Você Clicou no Botão!')

    find('#teste').click #para o texto sair da tela
    has_no_text?('Você Clicou no Botão!')
    
  end
  

  # more: https://medium.com/automa%C3%A7%C3%A3o-com-batista/trabalhando-com-verifica%C3%A7%C3%B5es-e-esperas-de-elementos-com-o-capybara-siteprism-e-rspec-parte-ii-6b12a6a39f77