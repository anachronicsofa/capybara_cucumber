Quando("interajo com dropdown e select") do
    visit '/buscaelementos/dropdowneselect'
    find('.btn.dropdown-button').click
    find('#dropdown3').click
    find('option[value="2"]').select_option
    # ou select'Chrome', from:'dropdown' 
    sleep(5)
  end
  
  Quando("preencho autocomplete") do
    visit '/widgets/autocomplete'
    find('#autocomplete-input').set'Rio de Jan'
    find('ul', text: 'Rio de Janeiro').click
    sleep(5)
  end