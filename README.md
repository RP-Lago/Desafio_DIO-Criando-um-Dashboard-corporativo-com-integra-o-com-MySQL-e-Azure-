## Análise da Estrutura Organizacional e Projetos com Power BI e Azure

Este dashboard interativo, desenvolvido no Power BI, apresenta uma visão detalhada da estrutura organizacional de uma empresa, incluindo a relação entre gerentes e colaboradores, distribuição geográfica e alocação em projetos, utilizando dados provenientes de um banco de dados MySQL hospedado no Azure.

### Contexto e Tecnologias Utilizadas:

Buscando otimizar a análise de dados da empresa e facilitar a tomada de decisões estratégicas, este projeto integra diferentes tecnologias:

- **Microsoft Azure:** A plataforma cloud da Microsoft oferece o ambiente seguro e escalável para hospedar o banco de dados.
- **MySQL:** O sistema de gerenciamento de banco de dados relacional MySQL armazena os dados dos funcionários, departamentos e projetos.
- **Power BI Desktop:** A ferramenta de Business Intelligence da Microsoft é utilizada para conectar, transformar, modelar e visualizar os dados de forma interativa e intuitiva.

- **Alguns passos de criação e conexão das ferramentas mencionadas acima:**

Criação de recursos no Azure para um servidor MySQL, incluindo a criação e hospedagem de um banco de dados, seguido da conexão com o MySQL Workbench.

![alt text][def]


![alt text][def2]

![alt text][def3]

Consulta via Cloud Shell:

![alt text][def4]

Conexão do MySQL Workbench do MYSQL na AZURE:

![alt text][def6]


Consulta via MySQM na Maq. Local:

![alt text][def7]

Conexão do PowerBi com o database do MYSQL na AZURE
![alt text][def5]

![alt text][def8]

### Painel de Visualizações:

O dashboard é composto por diversas visualizações que, em conjunto, proporcionam uma análise completa da organização:

**Visão Geral:**

* **Total de Colaboradores (8):**  Um indicador numérico conciso do tamanho da força de trabalho.
* **Total de Departamentos (3):**  Informa a quantidade de departamentos dentro da organização.
* **Média de Salarial (35 Mil):**  Um valor representativo da média salarial da empresa, fornecendo insights para análises comparativas e de equidade.
* **Total de Projetos (66):**  Indica o volume total de projetos em andamento na empresa.

**Relações e Distribuição:**

* **Total de Colaborador por Gerente:** Um gráfico de barras que permite comparar o número de colaboradores sob a gestão de cada gerente, facilitando a identificação de equipes maiores e menores. 
* **Projeto Por Departamento:** Um gráfico de barras que ilustra a distribuição de projetos por departamento, revelando quais áreas concentram maior volume de atividades.
* **Tabela "Departamento | Colaborador":** Uma tabela detalhada que cruza informações de cada colaborador com seu respectivo departamento.
* **Tabela "Nome Ger. Subordinado | NomeGerente":**  Apresenta a relação hierárquica completa entre gerentes e subordinados. 

**Distribuição Geográfica:**

* **Filtro "Address.City":** Um filtro interativo que permite segmentar os dados por cidade, focando a análise em localidades específicas.
* **Filtro "Address.State" e Mapa:** O filtro "Address.State", fixado em "TX" (Texas), combinado com o mapa, oferece uma visão geográfica da localização dos funcionários.

### Análise e Insights:

O dashboard permite extrair insights valiosos sobre a empresa, como:

- **Estrutura da Equipe:**  É possível identificar os gerentes com mais colaboradores, a distribuição de projetos por departamento e a relação hierárquica entre os funcionários.
- **Concentração Geográfica:**  A visualização no mapa e os filtros de cidade e estado permitem identificar as áreas de maior concentração de funcionários, auxiliando em decisões estratégicas de alocação de recursos e logística.
- **Relação entre Métricas:** Ao utilizar as funcionalidades interativas do Power BI, é possível analisar a relação entre as diferentes métricas. Por exemplo, é possível filtrar os dados para visualizar a média salarial e a distribuição de projetos em um departamento específico.

### Próximos Passos:

O dashboard pode ser expandido para incluir:

- **Análise Temporal:**  A incorporação da dimensão temporal permitiria analisar a evolução da força de trabalho, a progressão de projetos e outras métricas ao longo do tempo.
- **Indicadores de Performance:** A inclusão de KPIs (Key Performance Indicators), como taxa de conclusão de projetos, tempo médio de execução e custos, enriquecerá a análise e apoiará a tomada de decisão.
- **Integração com Outras Fontes de Dados:**  A conexão com outras fontes de dados, como sistemas de RH ou plataformas de gerenciamento de projetos, proporcionaria uma visão ainda mais completa e estratégica da organização.

### Conclusão:

A utilização combinada de Azure, MySQL e Power BI se mostra uma solução robusta e flexível para análise de dados organizacionais. Este dashboard, com seus recursos visuais e interativos, facilita a comunicação de insights importantes, contribuindo para uma gestão mais eficiente e orientada a dados.

 **Link para o Dashboard:**
 [https://app.powerbi.com/links/lczekB6zby?ctid=8e123a37-3744-4839-b542-42a08d32388b&pbi_source=linkShare&bookmarkGuid=2ce1ef28-012c-4e86-8dbf-bf08ca30e3d7](https://app.powerbi.com/links/lczekB6zby?ctid=8e123a37-3744-4839-b542-42a08d32388b&pbi_source=linkShare&bookmarkGuid=2ce1ef28-012c-4e86-8dbf-bf08ca30e3d7) 


[def]: <Captura de tela 2024-10-08 233130.png>
[def2]: image.png
[def3]: <Captura de tela 2024-10-08 221401.png>
[def4]: <Captura de tela 2024-10-09 001323.png>
[def5]: <Captura de tela 2024-10-09 011719.png>
[def6]: <Captura de tela 2024-10-08 234100.png>
[def7]: <Captura de tela 2024-10-09 081907.png>
[def8]: <Captura de tela 2024-10-09 003437.png>