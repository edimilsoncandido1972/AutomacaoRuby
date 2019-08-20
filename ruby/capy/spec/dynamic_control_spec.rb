describe 'dynamic control', :dc do
   before(:each) do 
    visit '/dynamic_controls'

    end


    it 'quando habilita o campo' do 

        # quando tem a propriedade disable true o campo esta desabilidado
        # quando não tem a propriedade o compo esta habilitado
        
        res = page.has_field? 'movie', disabled: true 
        puts res
        
        click_button 'Habilita'

        res = page.has_field? 'movie', disabled: false
        puts res
    end
end
