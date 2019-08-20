describe 'Drag and Drop', :drop do 
    before(:each) do 
        visit '/drag_and_drop'

    end

    it 'homem aranha pertene ao time do stark'  do
        stark = find('.team-stark .column')  # aqui eu identifico o meu time alvo que é a Div do Tony stark
        cap = find('.team-cap .column')      # aqui eu identifico o meu time alvo que é a Div do capitão america

        spiderman = find('img[alt$=Aranha]') # identifico o elemento que eu quero mover
        spiderman.drag_to stark              # move esse elemento para o alvo final

        expect(stark).to have_css 'img[alt$=Aranha]' # verifico no meu alvo final se o elemento consta la mesmo
        expect(cap).not_to have_css 'img[alt$=Aranha]' # aqui eu vou verificar se ele não existe mais na DIV do capitão america
    end

end