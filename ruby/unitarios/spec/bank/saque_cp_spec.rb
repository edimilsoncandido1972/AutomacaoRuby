# class ContaPoupanca 
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

# describe ContaPoupanca do 

#     describe 'Saque' do

#         context 'quando o valor é positivo' do
#             before(:all)do
#                 @conta = ContaPoupanca.new(1000.00)
#                 @conta.saca(200.00)    
#             end
#             it 'então atualiza saldo' do 
#                 expect(@conta.saldo).to eql 800.00
#             end
#         end
        
#         context 'quando o saldo é zero'do
#             before(:all)do 
#                 @conta = ContaPoupanca.new(0.00)
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
#                 @conta = ContaPoupanca.new(500.00)
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
#                 @conta = ContaPoupanca.new(1000.00)
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

describe ContaPoupanca do 

    describe 'Saque' do

        context 'quando o valor é positivo' do
            before(:all)do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200.00)    
            end
            it 'então atualiza saldo' do 
                expect(@cp.saldo).to eql 798.00
            end
        end
        
        context 'quando o saldo é zero'do
            before(:all)do 
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(100.00)
            end
            it 'então exibe vejo a mensagem ' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
                            
            end
            
            it 'e o meu saldo final com zeros' do
                expect(@cp.saldo).to eql 0.00
            end

        end
        context 'quando o saldo é inssuficiente'do
            before(:all)do 
                @cp = ContaPoupanca.new(500.00)
                @cp.saca(501.00)
            end
            it 'então exibe mensagem ' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
                            
            end
            
            it 'e o saldo permanece' do
                expect(@cp.saldo).to eql 500.00
            end

        end
        context 'quando supera o limite de saque' do
            before(:all)do 
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(501.00)
            end
            it 'então exibe mensagem ' do
                expect(@cp.mensagem).to eql 'Limite máximo por saque é de R$ 500'
                            
            end
            
            it 'e o saldo permanece' do
                expect(@cp.saldo).to eql 1000.00
            end
        
        end

    end


end 

#     end


# end 