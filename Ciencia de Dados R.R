# https://cdr.ibpad.com.br/conceitos-basicos.html

raiz.quadrada <- sqrt(16) # função para calcular raiz quadrada

round(5.3499999, 2) # função para arredondamento
??inner_join # procurar ajuda de funções que não estão "instaladas" ainda
## boas práticas Google: https://google.github.io/styleguide/Rguide.xml

senado <- read_csv("senado.csv")
#O head e o tail são funções para ver a “cabeça” e o “rabo” dos seus dados, ou seja, o começo e o fim das amostras.
head(senado) # verifica as primeiras linhas de um data frame
tail(senado) #verifica as últimas linhas de um data frame
class(senado) # verifica as classes do objeto
str(senado) #verifica a estrutura de um objeto
summary(senado) #verifica a estatística básica do objeto
Preco_Med <- read_delim("TA_PRECOS_MEDICAMENTOS.csv", delim = "|") # leitura de arquivo separado por um delimitador diferente de ";"
Sample <- read_fwf("fwf-sample.txt", col_positions = fwf_widths(c(20, 10, 12), c("nome", "estado", "código"))) # leitura de arquivo separado por colunas fixas

#https://cdr.ibpad.com.br/manipulando-os-dados.html

vetor.chr <- c('tipo1', 'tipo2', 'tipo3', 'tipo4')
vetor.num <- c(1, 2, 5, 8, 1001)
vetor.num.repetidos <- c(rep(2, 50)) #usando funcão para repetir números
vetor.num.sequencia <- c(seq(from=0, to=100, by=5)) #usando função para criar sequências
vetor.logical <- c(TRUE, TRUE, TRUE, FALSE, FALSE)

#cria-se diferentes vetores
nome <- c('João', 'José', 'Maria', 'Joana')
idade <- c(45, 12, 28, 31)
adulto <- c(TRUE, FALSE, TRUE, TRUE)
uf <- c('DF', 'SP', 'RJ', 'MG')
#cada vetor é uma combinação de elementos de um MESMO tipo de dados
#sendo assim, cada vetor pode ser uma coluna de um data.frame
clientes <- data.frame(nome, idade, adulto, uf)
clientes

#FOR

lista.de.arquivos <- list.files(getwd()) #lista todos os arquivos de uma pasta
is.vector(lista.de.arquivos)
for(i in lista.de.arquivos) {
        print(paste('Leia o arquivo:', i))
        #exemplo: read_delim(i, delim = "|")
}
#https://cdr.ibpad.com.br/manipulando-os-dados.html pacote dplyr
#https://cdr.ibpad.com.br/limpando-dados.html manipulação de texto
