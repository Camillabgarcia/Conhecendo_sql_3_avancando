Conhecendo SQL - Parte 3: Curso de
Realizando consultas com SQL: Joins, Views e transações

Este repositório contém o material e os códigos desenvolvidos durante a terceira parte da Formação de Conhecendo SQL pela plataforma Alura. Nesta etapa, focamos no uso de comandos SQL mais avançados para manipulação e consulta de dados, incluindo JOINs, subconsultas, views, triggers, e transações.

Tópicos Abordados
1. Criação e Inserção de Dados
  Criação de Tabelas com DEFAULT: Aprendi a definir valores padrão (DEFAULT) para colunas ao criar tabelas, facilitando a inserção de dados.
  Inserção de Dados com DEFAULT: Ao utilizar valores padrão, simplifiquei a inserção de dados, permitindo que colunas assumam o valor padrão automaticamente.
  Importação de Arquivos CSV: Realizei a importação de dados a partir de arquivos CSV para popular o banco de dados, tornando o processo de carga de dados massivos mais ágil.
2. Consultas com UNION e Subconsultas
  Consultas com UNION: Utilizei a cláusula UNION para combinar resultados de múltiplas consultas, retornando apenas valores distintos.
  Uso de UNION ALL: Estudei a diferença entre UNION e UNION ALL, utilizando o último para incluir todos os resultados, sem eliminar duplicatas.
  Subconsultas: Explorei o conceito de subconsultas, que são consultas aninhadas dentro de outras consultas, aumentando a complexidade e a capacidade de filtrar dados.
  Subconsulta com IN: Apliquei subconsultas para comparar valores dentro de um conjunto retornado por outra consulta usando a cláusula IN.
  Subconsulta com HAVING: Aprendi a utilizar subconsultas na cláusula HAVING para aplicar filtros em dados agregados.
3. Operações com JOINs
  INNER JOIN: Estudei como utilizar o INNER JOIN para combinar dados de duas ou mais tabelas, retornando apenas os registros correspondentes.
  LEFT JOIN e RIGHT JOIN: Aprendi a trabalhar com LEFT JOIN e RIGHT JOIN para retornar todos os registros da tabela à esquerda (ou direita), independentemente de haver correspondência.
  FULL JOIN: Executei consultas utilizando FULL JOIN para retornar todos os registros de ambas as tabelas, com ou sem correspondência.
4. Criação e Uso de VIEWs
  Criação de VIEWs: Estudei como criar VIEWs, que são consultas armazenadas como objetos de banco de dados reutilizáveis, facilitando a organização e reutilização de consultas complexas.
  Utilização de VIEWs em Consultas: Apliquei VIEWs para simplificar e reutilizar consultas em diferentes partes do sistema.
5. Triggers
  Criação de TRIGGERs com INSERT: Aprendi a criar TRIGGERs para automatizar ações ao inserir dados, garantindo a execução de lógicas adicionais automaticamente.
  Ação de uma TRIGGER: Entendi o processo de acionamento de TRIGGERs e como elas podem melhorar a integridade e a automação no banco de dados.
6. Manipulação de Dados e Transações
  Atualização de Dados com UPDATE: Utilizei o comando UPDATE para modificar registros específicos nas tabelas.
  Exclusão de Dados com DELETE CASCADE: Estudei como o DELETE CASCADE remove automaticamente registros relacionados em tabelas referenciadas por chaves estrangeiras.
  Transações: Conheci o conceito de transações, que permitem agrupar múltiplas operações em uma única unidade de trabalho.
  COMMIT e ROLLBACK: Aprendi a iniciar transações e encerrar com sucesso usando COMMIT ou reverter alterações com ROLLBACK em caso de falha.
