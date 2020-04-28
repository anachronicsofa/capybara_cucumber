Quando("eu uso iframe e preecho campos") do
    visit '/mudancadefoco/iframe'
    #mudando foco para o iframe
    within_frame('id_do_iframe') do
    #as ações dentro do iframe
    find('#first_name').set('Aline')
    find('#last_name').set('Ramos')
    #fill_in(id: 'first_name', with: 'Aline')
    end

  end
  
  Quando("eu entro no modal e verifico o texto") do
    visit '/mudancadefoco/modal'
    find('a[href="#modal1"]').click
    within('#modal1') do 
        @texto = find('h4')
        expect(@texto.text).to eql "Modal Teste" 
        sleep(2)
        find('.modal-close').click
    end 
  end
