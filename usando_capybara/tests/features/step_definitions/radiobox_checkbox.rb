Quando("eu marco um radiobox e um checkbox") do
    visit '/buscaelementos/radioecheckbox'
    find('label[for="white"]').click
    check('purple', allow_label_click: true)
    uncheck('purple', allow_label_click: true) #desmarcar a label que foi anteriormente marcada
    choose('red', allow_label_click: true)
    
  end