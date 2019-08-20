

describe 'Caixa de opções', :dropdown do 
    it 'Item especifico simples' do 
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 # temporario
    end

    it 'Item especifico com o find' do 
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3 # temporario


    end

    it 'qualquer item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3 # temporario


    end



end