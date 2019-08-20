



describe 'Meu primeiro script', :hello, :smoke do 
    
    it 'visitar a página'  do

        visit '/'
        puts page.title
    end


end