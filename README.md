# Análise de Business Intelligence para o Setor Imobiliário 🏠📊

Bem-vindo(a) ao repositório do projeto de **Análise de Dados para uma Imobiliária Fictícia**!  
Este trabalho acadêmico simula um fluxo completo de **Business Intelligence (BI)** — desde a modelagem do banco de dados até a criação de dashboards interativos — para apoiar a tomada de decisões estratégicas no setor imobiliário.

<p align="center">
  <img src="./assets/Imobi.jpg" alt="Análise Imobiliária" width="600">
</p>

---

## Sobre o Projeto 🚀

O projeto foi desenvolvido com o objetivo de aplicar conceitos de **modelagem de dados, SQL e visualização de informações** em um cenário prático do mercado imobiliário. O fluxo de trabalho seguiu as seguintes etapas:

1. **Modelagem de Dados:** Criação manual de um **Diagrama Entidade-Relacionamento (DER)** para estruturar as informações de forma lógica e coesa, representando entidades como imóveis, clientes, corretores e transações.  
2. **Criação do Banco de Dados:** Tradução do DER para **SQL**, gerando tabelas, campos e relacionamentos no banco de dados.  
3. **Geração de Dados Fictícios:** Utilização do **Mockaroo** para criar uma massa de dados realistas e consistentes, posteriormente inseridos no banco.  
4. **Análise e Visualização:** Conexão dos dados ao **Microsoft Power BI**, com tratamento, transformação e desenvolvimento de dashboards interativos.  
5. **Apresentação dos Resultados:** Consolidação dos insights em uma apresentação no **Canva**, mostrando como as análises podem responder a perguntas de negócio essenciais.  

---

## Perguntas de Negócio Respondidas 📈

Os dashboards foram desenvolvidos para responder a questões estratégicas, como:  

- Qual o tipo de imóvel mais vendido, mais alugado e o que permanece mais tempo disponível?  
- Qual região da cidade concentra os imóveis com maior valor médio?  
- Qual corretor gerou o maior volume de receita em vendas e aluguéis?  
- Qual o perfil de imóvel mais comum para venda (ex.: quantidade de quartos)?  
- Qual plano de anúncio foi mais utilizado e qual gera mais conversões (vendas/aluguéis)?  
- Qual a forma de pagamento mais comum na compra de imóveis?  

---

## Apresentação do Projeto 🎨

A análise completa e os principais insights foram organizados em uma apresentação visual no Canva. Veja abaixo uma prévia:  

<p align="center">
  <a href="https://www.canva.com/design/DAGx9Cn7hrg/AGNVKajCnK5-a5M0JpjcXQ/view?utm_content=DAGx9Cn7hrg&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=h08244fb192" target="_blank">
    <img src="./assets/Imobi_dash.jpg" alt="Slide da apresentação final do projeto" width="700">
  </a>
</p>

<p align="center">
  <strong><a href="https://www.canva.com/design/DAGx9Cn7hrg/AGNVKajCnK5-a5M0JpjcXQ/view?utm_content=DAGx9Cn7hrg&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=h08244fb192">➡️ Clique aqui para ver a apresentação completa no Canva</a></strong>
</p>

---

## Tecnologias Utilizadas 🔥

- **Modelagem de Dados:**  
  - Diagrama Entidade-Relacionamento (DER)  
- **Banco de Dados:**  
  - MySQL  
- **Geração de Dados:**  
  - Mockaroo  
- **Business Intelligence e Visualização:**  
  - Microsoft Power BI  
- **Apresentação:**  
  - Canva. 

---

## Estrutura do Repositório 📁

```plaintext
/PROJETO_STARTUP
├── 📂 assets/
│   ├── 🖼️ imobi.jpg
│   └── 🖼️ imobi_dash.jpg
├── 📂 dashboards/
│   ├── 📄 dashpowerbi.pdf
│   └── 📄 dashpowerbi_2.pdf
├── 📂 banco_de_dados/
│   ├── 📜 dados_dos_clientes.sql
│   └── 📜 tabelas_do_banco.sql
├── 📂 diagrama/
│   └── 📄 der.pdf
└── 📄 README.md
