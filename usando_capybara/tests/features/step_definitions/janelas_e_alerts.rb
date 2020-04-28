Quando("eu entro na janela e verifico a mensagem") do
    visit '/mudancadefoco/janela'

    janela = window_opened_by do 
        click_link 'Clique aqui'
    end 
    #muda de foco para a janela
    within_window janela do 
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        janela.close 
    end
  end
  
  Quando("eu entro no alert e faço a ação") do
      # Botão apenas de Okay
      visit '/mudancadefoco/alert'
      find('button[onclick="jsAlert()"]').click 
      page.accept_alert
      # Botão com duas opções, negando o alerta
      find('button[onclick="jsConfirm()"]').click
      page.dismiss_confirm
      # Alerta com prompt 
      find('button[onclick="jsPrompt()"]').click
      page.accept_prompt(with: 'Aline Ramos')
      #page.dismiss_prompt
  end