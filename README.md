# Projeto Integrador - Bootcamp Generation

Integrantes do projeto: Carlos Eduardo, Daniele Santos, Edvaldo Junior, Fernanda Viotto De Gobbi, Guilherme Soares, Samuel Sá e Sara Monteiro.

Resumo:
Projeto Integrador feito em grupo para a conclusão de curso do Bootcamp da Generation patrocinado pela Microsoft - T75. 
O projeto visa criar um marketplace de produtos de saúde sexual, reprodutiva e higiene pessoal com preços mais justos, facilitando o acesso equitativo aos consumidores, e incluindo a opção de doação de produtos para pessoas em situações de risco. 
Além disso, funciona como um hub de educação em saúde, promovendo a disseminação de informações e conhecimentos úteis sobre os produtos e temas relevantes. 
O nome do aplicativo é IntCare, e ele opera por meio de parcerias com farmácias e profissionais da saúde. 
Trata-se de um projeto lucrativo ao centralizar a oferta de produtos e proporcionar um público amplo para os parceiros em questão, além de ser social e de extrema importância para a saúde pública.

## Primeira Etapa

Objetivo:  modelar e implementar o banco de dados referente ao modelo do projeto.

Descrição: 
1. Upload do arquivo PDF da explicação do projeto;
2. Criação do DER do banco de dados db_intcare;
3. Criação de apenas 3 tabelas: tb_categorias, tb_produtos e tb_usuario;
4. Criação do DER através do MySQL Workbench.

## Segunda Etapa

Objetivo: criar o projeto Spring no Spring Initializer.

Descrição: 
1. Criação do projeto no Spring Initializr. Dependências utilizadas: Spring WEB, Spring dev tools, Spring data JPA, MySQL driver, validation e lombok;
3. Configuração do arquivo application.properties para conectar com o Banco de dados;
4. Criação da Classe Model CategoriasModel;
5. Criação dos atributos estabelecidos na DER;
6. Criação dos métodos get and set;
7. Criação da Interface Repository CategoriaRepository.

## Terceira Etapa

Objetivo: criar o CRUD do projeto Spring.

Descrição:
1. Criação da Classe Controller CategoriaController;
2. Criação dos métodos básicos do CRUD: findAll(), findById(), post(), pull() e delete().
3. Criação dos métodos específicos: findAllByGeneroContainingIgnoreCase() e findAllByNomeCategoriaContainingIgnoreCase ().
4. Edição da Interface Repository CategoriaRepository com a adição dos métodos específicos.
5. Edição da Classe Model CategoriaModel, mudando a String 'nome' para 'nomeCategoria'.
6. Testes das API's no Insomnia.
