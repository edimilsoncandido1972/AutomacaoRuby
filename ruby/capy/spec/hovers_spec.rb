describe 'Mouse deHover', :hovers do 

    before(:each) do 
        visit '/hovers'

    end

    it 'quando passo o mouse sobre o blade' do 
        card = find('img[alt*=Blade') # Para pesquisar um seletor que contem  com uma palavra voce precisa no comando "*=" ex: $('img[alt*=Aranha'); no JQUERY no chrome.
        card.hover 

        expect(page).to have_content 'Nome: Blade'
    
    end

    it 'quando passo o mouse sbore o pantera negra' do
        card = find('img[alt^=Pantera') # Para pesquisar um seletor que comece com uma palavra voce precisa no comando "^=" ex: $('img[alt^=Pantera'); no JQUERY no chrome.
        card.hover 

        expect(page).to have_content 'Nome: Pantera Negra'
    
    end 


    it 'quando passo o mouse sbore o homem aranha' do
        card = find('img[alt$=Aranha') # Para pesquisar um seletor que termina com uma palavra voce precisa no comando "$=" ex: $('img[alt$=Aranha'); no JQUERY no chrome.
        card.hover 

        expect(page).to have_content 'Nome: Homem Aranha'
    
    end 


    after(:each) do 
        sleep 0.5  #temporaio so para verificar o resultado
    end

end