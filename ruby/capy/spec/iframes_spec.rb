describe 'iframe'  do 

    describe 'bom',     :nice_iframe do

        before(:each) do 
            visit '/nice_iframe'
        end

        it 'adicionar ao carrinho' do
            within_frame('burgerId') do # com esse comando eu consigo trabalhar com todos os elementos dentro do iframe
                produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
                produto.find('a').click
                expect(find('#cart')).to have_content 'R$ 4,50'
                sleep 5
            end
        end

    end

    describe 'ruim', :bad_iframe do
        before(:each) do 
            visit '/bad_iframe'
        end

        it 'carrinho deve estar vazio' do
                script = '$(".box-iframe").attr("id", "tempId");'   # essa é uma outra forma de resolver com um html ruim ou seja sem ID, aqui criamos um ID temporario 'tempId'
                page.execute_script(script)

                within_frame('tempId') do 
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
                sleep 5
            end
        end

    end

end