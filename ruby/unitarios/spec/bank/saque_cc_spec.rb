# class ContaCorrente 
#     attr_accessor :saldo, :mensagem

#     def initialize(saldo)
#         self.saldo = saldo

#     end

#     def saca(valor) 
#         if (valor > self.saldo)
#             self.mensagem = 'Saldo insuficiente para saque :('
#         elsif (valor > 700.00)
#             self.mensagem = 'Limite máximo por saque é de R$ 700'
#         else
#         self.saldo -= valor
#         end
#     end
    
# end

# =====================================

# esse comamndo abaixo é para importar o aqrquivo que esta
# com a Class

# require_relative '../app/bank'

# describe ContaCorrente do 

#     describe 'Saque' do

#         context 'quando o valor é positivo' do
#             before(:all)do
#                 @conta = ContaCorrente.new(1000.00)
#                 @conta.saca(200.00)    
#             end
#             it 'então atualiza saldo' do 
#                 expect(@conta.saldo).to eql 800.00
#             end
#         end
        
#         context 'quando o saldo é zero'do
#             before(:all)do 
#                 @conta = ContaCorrente.new(0.00)
#                 @conta.saca(100.00)
#             end
#             it 'então exibe vejo a mensagem ' do
#                 expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
                            
#             end
            
#             it 'e o meu saldo final com zeros' do
#                 expect(@conta.saldo).to eql 0.00
#             end

#         end
#         context 'quando o saldo é inssuficiente'do
#             before(:all)do 
#                 @conta = ContaCorrente.new(500.00)
#                 @conta.saca(501.00)
#             end
#             it 'então exibe mensagem ' do
#                 expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
                            
#             end
            
#             it 'e o saldo permanece' do
#                 expect(@conta.saldo).to eql 500.00
#             end

#         end
#         context 'quando supera o limite de saque' do
#             before(:all)do 
#                 @conta = ContaCorrente.new(1000.00)
#                 @conta.saca(701.00)
#             end
#             it 'então exibe mensagem ' do
#                 expect(@conta.mensagem).to eql 'Limite máximo por saque é de R$ 700'
                            
#             end
            
#             it 'e o saldo permanece' do
#                 expect(@conta.saldo).to eql 1000.00
#             end
        
#         end


# ================================================

require_relative '../../app/bank'

describe ContaCorrente do 

    describe 'Saque' do

        context 'quando o valor é positivo' do
            before(:all)do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200.00)    
            end
            it 'então atualiza saldo' do 
                expect(@cc.saldo).to eql 795.00
            end
        end
        
        context 'quando o saldo é zero'do
            before(:all)do 
                @cc = ContaCorrente.new(0.00)
                @cc.saca(100.00)
            end
            it 'então exibe vejo a mensagem ' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
                            
            end
            
            it 'e o meu saldo final com zeros' do
                expect(@cc.saldo).to eql 0.00
            end

        end
        context 'quando o saldo é inssuficiente'do
            before(:all)do 
                @cc = ContaCorrente.new(500.00)
                @cc.saca(501.00)
            end
            it 'então exibe mensagem ' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
                            
            end
            
            it 'e o saldo permanece' do
                expect(@cc.saldo).to eql 500.00
            end

        end
        context 'quando supera o limite de saque' do
            before(:all)do 
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(701.00)
            end
            it 'então exibe mensagem ' do
                expect(@cc.mensagem).to eql 'Limite máximo por saque é de R$ 700'
                            
            end
            
            it 'e o saldo permanece' do
                expect(@cc.saldo).to eql 1000.00
            end
        
        end

    end


end 

#     end


# end 