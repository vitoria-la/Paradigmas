# Resolução dos exercícios da lista
<br>

## Primeira parte:

> ### 2. Plankalkül não foi implementada em sua época. Ainda assim, por que ela é relevante para a história das linguagens? Cite três recursos antecipados por seu projeto e explique o valor de um deles.

A linguagem **Plankalkül** é de importante relevância por conta de todos os conceitos de programação de alto nível que ela apresentou, no qual seriam amplamente usados por muitas das linguagens em seguida. Segue 3 recursos por ela antecipados:

1. **Sub-rotinas**
     - Blocos de código isolados que executam uma tarefa específica e podem ser chamados e reutilizados em diferentes partes do programa.
2. **Laços de repetição**
     - Estruturas que permitiam repetir um mesmo bloco de instruções várias vezes sem precisar reescrever o código, antecipando o funcionamento dos comandos modernos `for` e `while`
3. **Execução condicional.**
     - A habilidade de o programa tomar decisões com base em uma regra (a lógica do "se X for verdadeiro, faça Y; caso contrário, faça Z").

<br>

> ### 3. Compare Short Code, Speedcoding e os sistemas A-0/A-1/A-2 quanto ao problema enfrentado e à estratégia adotada. Por que chamá-los simplesmente de compiladores modernos seria impreciso?

| Sistema         | Problema enfrentado                                                | Estratégia                                     | Principal limitação em relação aos compiladores modernos           |
| --------------- | ------------------------------------------------------------------ | ---------------------------------------------- | ------------------------------------------------------------------ |
| **Short Code**  | Dificuldade de escrever operações diretamente em código de máquina | Notação matemática/simbólica interpretada      | Execução lenta e pouca otimização                                  |
| **Speedcoding** | Alto custo para programar cálculos no IBM 701                      | Abreviações e rotinas auxiliares               | Grande dependência de rotinas e custo de execução                  |
| **A-0**         | Repetição na programação e dificuldade de reutilizar rotinas       | Localização e combinação automática de rotinas | Não era um compilador geral de linguagem como os posteriores       |
| **A-1/A-2**     | Refinar a automação e reutilização de rotinas                      | Evolução do mecanismo de tradução/composição   | Ainda muito distante do pipeline completo de um compilador moderno |


<br>

> ### 4. Explique por que o projeto Fortran precisou convencer programadores de que código traduzido podia competir com código de máquina escrito à mão. Relacione desempenho, custo de programação e adoção.
Na década de 1950, o tempo de processamento dos computadores custava milhares de dólares por hora, e os programadores da época estavam muito mais próximos da máquina em si, o que os levava a acreditar que nenhum tradutor automático geraria um código tão eficiente quanto, o que dificultou o aceitamento do **Fortran**, que era de bem mais alto nível. Porém, ele conseguiu se provar e ter uma ampla adoção, principalmente por fatores como o seu compilador otimizado (que deixava o desempenho praticamente igual ao código de mão), o ganho de produtividade (diminuindo o número de linhas em até 20 vezes), etc.

<br>

> ### 5. Lisp surgiu em um contexto diferente de Fortran. Compare os domínios, a representação de dados e o estilo de computação favorecido pelas duas linguagens.

| Característica             | Fortran (1957)                                            | Lisp (1958)                                                 |
| -------------------------- | --------------------------------------------------------- | ----------------------------------------------------------- |
| **Domínio Principal**      | Cálculo científico, simulações de física e engenharia.    | Inteligência Artificial, prova de teoremas e lógica formal. |
| **Representação de Dados** | Números e matrizes (tabelas rígidas de tamanho fixo).     | Listas dinâmicas e expressões simbólicas (S-expressions).   |
| **Estilo de Computação**   | Imperativo: comandos passo a passo que alteram a memória. | Funcional: avaliação de funções e uso intenso de recursão.  |
| **Código vs. Dados**       | O código e os dados são coisas totalmente separadas.      | O código e os dados têm o mesmo formato (listas).           |

<br>

> ### 9. APL, SNOBOL e SIMULA 67 seguiram direções distintas. Associe cada linguagem ao seu foco e identifique uma contribuição duradoura de cada uma.
| Linguagem     | Foco principal                                      | Estilo de computação favorecido                                    | Contribuição duradoura                                                         |
| --------------| --------------------------------------------------- | ------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| **APL**       | Computação matemática e manipulação de arrays       | **Vetorial**: aplica operações a conjuntos inteiros de dados       | Programação com arrays e operações vetorizadas                                 |
| **SNOBOL**    | Processamento de texto e reconhecimento de padrões  | **Simbólico**: procura, reconhece e transforma estruturas textuais | Pattern matching, influenciando processamento de texto e mecanismos de padrões |
| **SIMULA 67** | Simulação de sistemas                               | **Orientado a objetos**: entidades interagem e mudam de estado     | Classes, objetos e conceitos fundamentais da orientação a objetos              |


<br>
<hr>
<br>


## Segunda parte:

> ### 12. Modele em linguagem natural uma pequena base Prolog com dois fatos, uma regra e uma consulta. Explique por que isso representa programação lógica, não apenas armazenamento de dados.

```prolog
"João é estudante."
estudante(joao).

"Todo estudante é uma pessoa."
pessoa(joao).

"Se alguém é estudante, então essa pessoa é dedicada."
dedicado(X) :- estudante(X).
```

E a consulta seria:

```prolog
"João é dedicado?"
?- dedicado(joao).
```

O resultado seria:

```text
true
```
O programa não está só armazenando informações sobre o João, ele está inferindo uma informação nova com base em uma lógica passada para ele.


<br>

> ### 16. Compare Perl, JavaScript, PHP, Python, Ruby e Lua usando três eixos: domínio inicial, estruturas de dados e estratégia de implementação. Evite concluir que todas são iguais por serem chamadas de scripting.

| Linguagem      | Domínio inicial                                              | Estruturas de dados                                        |Estratégia de implementação                                                          |
| -------------- | ------------------------------------------------------------ | ---------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| **Perl**       | Texto, arquivos, Unix e administração de sistemas            | Scalars, arrays, hashes e referências                      | Interpretador com representação interna do programa; implementação evoluiu bastante | 
| **JavaScript** | Interatividade na Web                                        | Objetos, arrays, `Map`, `Set`, Typed Arrays, etc.           | Engines com interpretação e compilação JIT                                         |
| **PHP**        | Web dinâmica, CGI, formulários e páginas geradas no servidor | `array` muito versátil: sequência e associação chave/valor | Zend Engine, bytecode e, nas versões modernas, JIT                                  |
| **Python**     | Programação geral com foco em clareza                        | `list`, `tuple`, `dict`, `set`                             | CPython transforma código em bytecode/objetos de código e executa no runtime        |
| **Ruby**       | Scripting com forte orientação a objetos                     | `Array`, `Hash` e um modelo de objetos muito uniforme      | Máquina virtual/representação intermediária na implementação tradicional            |  
| **Lua**        | Linguagem leve, eficiente e embutível em outros programas    | `table` como estrutura extremamente geral                  | Bytecode executado por VM baseada em registradores                                  | 

<br>

> ### 14. Compare o papel dos objetos em Smalltalk, C++ e Java. Inclua na resposta o compromisso de C++ com C e a estratégia de portabilidadede Java.

- **Smalltalk** colocou os objetos no centro da linguagem, tratando a programação como uma interação entre objetos que possuem estado, comportamento e trocam mensagens. 

- **C++** por outro lado, incorporou a orientação a objetos ao C, buscando manter compatibilidade, desempenho e controle sobre recursos do sistema, levando os objetos a conviverem com programação procedural, ponteiros e outras características de baixo nível.

- **Java** também tornou os objetos centrais (de maneira mais leve que o Smalltalk, ainda tendo tipos primitivos, por exemplo). A filosofia principal do Java é "Write Once, Run Anywhere" (Escreva uma vez, rode em qualquer lugar). Para alcançar essa portabilidade entre diferentes sistemas operacionais (Windows, Linux, macOS), a linguagem utiliza dois componentes centrais:
    - **Bytecode**: O código-fonte em Java não é compilado diretamente para a linguagem de máquina (código binário) do processador. Ele é convertido em uma linguagem intermediária chamada bytecode.
    - **JVM** (Java Virtual Machine): É um programa instalado no sistema operacional que lê o bytecode e o traduz em tempo de execução para os comandos específicos daquela máquina.

<br>

> ### 18. Diferencie XSLT e JSP quanto a entrada, processamento e saída. Por que ambas podem ser chamadas de linguagens híbridas de marcação e programação?

XSLT e JSP são tecnologias voltadas para a produção ou transformação de conteúdo para a web, mas trabalham de maneiras diferentes. A principal diferença está no tipo de entrada que recebem e em como essa entrada é transformada em saída.

| Aspecto                  | **XSLT**                                                    | **JSP**                                                          |
| ------------------------ | ----------------------------------------------------------- | ---------------------------------------------------------------- |
| **Ideia principal**      | Transformar dados estruturados                          | Gerar páginas dinamicamente                                  |
| **Entrada**              | Principalmente um documento **XML**                         | Uma página JSP contendo **HTML + elementos JSP/Java**            |
| **Processamento**        | Localiza partes do XML e aplica **regras de transformação** | Executa código e expressões no servidor para produzir uma página |
| **Saída**                | Geralmente outro documento, como **HTML, XML ou texto**     | Normalmente **HTML** enviado ao navegador                        |

Uma linguagem de marcação pura (como HTML ou XML) serve apenas para estruturar e apresentar dados, sem capacidade de tomar decisões ou fazer cálculos. Já uma linguagem de programação pura (como Java ou C#) serve para executar algoritmos e lógica de negócios.
**XSLT** e **JSP** são chamadas de híbridas porque misturam esses dois mundos no mesmo arquivo:
- Estrutura de Marcação: Ambas utilizam tags (sintaxe no estilo `<tag>...</tag>`) para definir como o resultado final deve ser organizado visualmente.
- Lógica de Programação: Ambas permitem embutir comandos condicionais (como `if`/`else`), laços de repetição (como `for-each` ou `while`) e manipulação de variáveis dentro dessa estrutura de tags.

<br>

> ### 20. Estudo de caso: uma equipe precisa escolher tecnologias para cálculo científico, regras declarativas, aplicação Web interativa e firmware restrito. Proponha famílias de linguagens, justifique historicamente cada escolha e explicite dois trade-offs.


| Necessidade                  | Família de linguagens sugerida            | Justificativa histórica                                                                                                                              | Por que se encaixa                                                                                                    |
| ---------------------------- | ----------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| **Cálculo científico**       | **FORTRAN e linguagens numéricas**        | FORTRAN nasceu na década de 1950 para facilitar cálculos científicos e de engenharia, buscando combinar programação de alto nível com bom desempenho | Excelente para operações numéricas, arrays, matrizes e cálculos intensivos                                            |
| **Regras declarativas**      | **Prolog e linguagens lógicas**           | Prolog surgiu no contexto de processamento simbólico e IA, usando fatos, regras e inferência                                                         | O programador descreve relações e regras, e o sistema procura conclusões                                              |
| **Aplicação Web interativa** | **JavaScript e linguagens da Web**        | JavaScript foi criado para adicionar comportamento dinâmico às páginas Web e posteriormente tornou-se uma linguagem também utilizada no servidor     | Adequado para eventos, interação com o usuário e atualização dinâmica da interface                                    |
| **Firmware restrito**        | **C e família de linguagens de sistemas** | C foi desenvolvido em um contexto de programação de sistemas, com preocupação com eficiência, memória e acesso próximo ao hardware                   | Permite controle de memória e recursos com baixo custo de execução, importante em dispositivos com recursos limitados |

**Trade offs:**
- Abstração × controle:
    - Podemos comparar Prolog/JavaScript com C, por exemplo. Linguagens mais abstratas permitem que o programador se preocupe menos com detalhes do hardware ou com cada passo da execução, enquanto C oferece mais controle direto ao baixo nível, mas, ao mesmo tempo, aumenta a complexidade. Assim, para firmware restrito, o controle de C pode valer mais do que a facilidade de uma linguagem altamente abstrata. Para uma aplicação Web, porém, produtividade e abstração podem ser muito mais importantes.
- Especialização × ecossistema:
    - Aparece quando precisamos decidir entre uma linguagem que é muito adequada a um problema específico e outra que pode fazer muitas coisas diferentes. Prolog, por exemplo, é especializado em programação lógica, na qual o programador descreve fatos e regras e o sistema encontra conclusões a partir dessas informações. Isso torna problemas baseados em regras bastante naturais de representar. Porém, Prolog possui um ecossistema menor que linguagens generalistas como JavaScript: há menos bibliotecas, ferramentas e profissionais disponíveis para determinados tipos de aplicação. Já uma linguagem generalista oferece maior variedade de bibliotecas e possibilidades, mas pode exigir mais código ou soluções menos naturais para problemas baseados em regras. Portanto, a especialização facilita a solução de um tipo específico de problema, enquanto um ecossistema maior oferece mais flexibilidade e recursos para diferentes problemas.
    
<br>
<hr>