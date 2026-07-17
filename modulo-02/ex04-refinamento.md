# Exercício 4 — Refinamento sucessivo


1. **Aplique a técnica do refinamento sucessivo (visão geral → detalhamento) para o problema:**

    *“Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a pagar.”*

### Nível 1 (Visão Geral)  

- Registrar os produtos comprados e calcular o subtotal.

- Verificar se o cliente possui cartão fidelidade para aplicar o desconto.

- Calcular o valor total a pagar.

- Exibir o valor final e finalizar a compra.

### Nível 2 (Detalhamento)  

**Passo 1:**

 - Registrar itens e calcular subtotal. Iniciar o subtotal com o valor 0;
 - Enquanto houver produtos para registrar: Ler o preço do produto;
 - Somar o preço lido ao valor acumulado no subtotal.
 
 **Passo 2:**
 
 - Verificar cartão fidelidade;
 - Perguntar ao usuário: "O cliente possui cartão fidelidade? (Sim/Não)"
 *Se a resposta for "Sim": Calcular o valor do desconto: desconto <- subtotal * 0.05.*
 *Senão:Definir o valor do desconto: desconto <- 0.*
 
 **Passo 3:**
 
 - Calcular o total a pagar;
 - Calcular o total subtraindo o desconto do subtotal: total_pagar <- subtotal - desconto.
 
 **Passo 4:**
 
 - Exibir e finalizar;
 - Escrever na tela o subtotal, o valor do desconto aplicado e o total_pagar;
 - Encerrar o sistema do caixa.