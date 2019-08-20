


describe 'forms', :smoke do 
    it 'login com sucesso' do  

        visit '/login'

        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        click_button 'Login'

        expect(find('#flash').visible?).to be true

        # expect(find('#flash').text).to eql 'Olá, Tony Stark. Você acessou a área logada!'
            # eql => quando eu quizer perguntar se o texto é igual
            # include => quando eu quizer perguntar se o elemento contem o texto 
            # have_content => quando eu quizer perguntar se o texto contem no elemento 
            # Include e have_content são parecidos



        # puts (find('#flash').text)
        # puts 'Olá, Tony Stark. Você acessou a área logada!'

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'senha incorreta' do  

        visit '/login'

        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'xxxxxxx'
        click_button 'Login'

        expect(find('#flash').visible?).to be true

        
        expect(find('#flash').text).to include 'Senha é invalida!'
    
        expect(find('#flash')).to have_content 'Senha é invalida!'
    end

    it 'usuário não cadastrado' do  

        visit '/login'

        fill_in 'userId', with: 'yyyyy'
        fill_in 'password', with: 'jarvis'
        click_button 'Login'

        expect(find('#flash').visible?).to be true

        
        expect(find('#flash').text).to include 'O usuário informado não está cadastrado!'
    
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end


end