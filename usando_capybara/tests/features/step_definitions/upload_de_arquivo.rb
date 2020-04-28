Quando("eu faço o upload de um arquivo") do
    visit '/outros/uploaddearquivos'
    attach_file('upload','C:\Users\AE - Agenda Edu\Desktop\usando_capybara\tests\features\shinji.jpg', make_visible: true)
    sleep(3)

    #ou
    # @foto = File.join(Dir.pwd, 'features/shinji.jpg')
    # attach_file('upload',@foto, make_visible: true)
  end