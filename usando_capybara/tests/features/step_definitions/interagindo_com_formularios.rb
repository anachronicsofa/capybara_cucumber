Quando("faço o Cadastro") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Aline') #pode ser também: find('#user_name').set('Aline') 
    fill_in(id: 'user_lastname', with: 'Ramos') 
    fill_in(id: 'user_email', with: 'alineramosv@gmail.com')
    find('#user_address').set('Rua 13 de Maio')
    find('#user_university').set('UNIFOR')
    fill_in(id: 'user_profile', with: 'Estudante')
    fill_in(id: 'user_gender', with: 'Feminino')
    find('#user_age').set('23')
    find('input[value="Criar"]').click
    sleep(5)
  end
  
  Entao("verifico o cadastro") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
  end