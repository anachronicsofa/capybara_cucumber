Quando("acesso a url da page") do 
    @home = PaginaInicial.new
    @home.load
    
end

Entao("verifico se estou na página inicial") do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true) 
end
  
