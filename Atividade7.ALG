Algoritmo "semnome"
// Disciplina   : Lógica de Programação
// Professor   : JULIA CAROLINE PEREIRA
// Descrição   : Sistema de gerenciamento de passagens  de avião.
// Autor(a)    : Gabriel Dos Santos
// Data atual  : 14/09/2024
Var
resposta: inteiro
valido: logico
nome: caractere
cpf:  caractere
saida: caractere
destino: caractere
companhia: caractere
distsai: inteiro
distdest: inteiro
distancia: inteiro
horariopart: inteiro
horariocheg: inteiro
mes: inteiro
dia: inteiro
diamax: inteiro
Inicio
Escreval("Olá e seja bem vindo nosso Sistema de gerenciamento de voos.")
Escreval("(insira o numero [1] para proseguir)")
repita
 leia(resposta)
ate resposta = 1
Escreval("Preencha as informaçoes abaixo")
Escreval("Nome completo:")
leia(nome)
escreval("CPF:")
leia(cpf)
EScreval("Buscar voos disponiveis ate que mes?")
Escreval("[1] Janeiro")
Escreval("[2] Fevereiro")
Escreval("[3] Março")
Escreval("[4] Abril")
Escreval("[5] Maio")
Escreval("[6] Junho")
Escreval("[7] Julho")
Escreval("[8] Agosto")
Escreval("[9] Setembro")
Escreval("[10] Outubro")
Escreval("[11] Novembro	")
Escreval("[12] Dezembro")
repita
 leia(resposta)
 escolha resposta
  caso 1
   valido <- verdadeiro
   mes <- 1
  caso 2
   valido <- verdadeiro
    mes <- 2
  caso 3
   valido <- verdadeiro
    mes <- 3
  caso 4
   valido <- verdadeiro
    mes <- 4
  caso 5
   valido <- verdadeiro
    mes <- 5
  caso 6
   valido <- verdadeiro
    mes <- 6
  caso 7
   valido <- verdadeiro
    mes <- 7
  caso 8
   valido <- verdadeiro
    mes <- 8
  caso 9
   valido <- verdadeiro
    mes <- 9
  caso 10
   valido <- verdadeiro
    mes <- 10
  caso 11
   valido <- verdadeiro
    mes <- 11
  caso 12
   valido <- verdadeiro
    mes <- 12
  outrocaso
   valido <- falso
 fimescolha
EScreval("Buscar voos disponiveis ate que dia do mes?")
leia(dia)
se mes = 2 entao
  diamax <- 29
fimse
se(mes=1)ou(mes =3)ou(mes=5)ou(mes=7)ou(mes=8)ou(mes=10)ou(mes=12) entao
  diamax <- 31
fimse
se(mes=4)ou(mes=6)ou(mes=9)ou(mes=11)e(dia>30) entao
  diamax <- 30
fimse
se dia> diamax entao
 dia <- diamax
fimse
ate valido = verdadeiro
escreval("Escolha qual seria seu local de partida.")
escreval("[1] Joinville (JOI)")
escreval("[2] São paulo (GRU)")
escreval("[3] Rio de janeiro (GIG)")
escreval("[4] Brasilia (BSB)")
escreval("[5] Salvador (SSA)")
escreval("[6] Manaus (MAO)")
repita
 leia (resposta)
 escolha resposta
  caso 1
   valido <- verdadeiro
   saida <- "JOI"
   distsai <- 2
   horariopart <- 8
  caso 2
   valido <- verdadeiro
   saida <- "GRU"
   distsai <- 3
   horariopart <- 9
  caso 3
   valido <- verdadeiro
   saida <- "GIG"
   distsai <- 4
   horariopart <- 10
  caso 4
   valido <- verdadeiro
   saida <- "BSB"
   distsai <- 6
   horariopart <- 11
  caso 5
   valido <- verdadeiro
   saida <-  "SSA"
   distsai <- 8
   horariopart <- 12
  caso 6
   valido <- verdadeiro
   saida <- "MAO"
   distsai <- 14
   horariopart <- 13
  outrocaso
   escreval("respota invalida")
   valido <- falso
 fimescolha
ate valido = verdadeiro

escreval("Escolha qual seria seu destino.")
se Nao(saida = "JOI" ) entao
 escreval("[1] Joinville")
fimse
se Nao(saida = "GRU" ) entao
 escreval("[2] São paulo")
fimse
se Nao(saida =  "GIG" ) entao
 escreval("[3] Rio de janeiro")
fimse
se Nao(saida = "BSB" ) entao
 escreval("[4] Brasilia")
fimse
se nao(saida = "SSA" ) entao
 escreval("[5] Salvador")
fimse
se nao(saida = "MAO") entao
 escreval("[6] Manaus")
fimse
repita
 leia (resposta)
 escolha resposta
  caso 1
   valido <- verdadeiro
   destino <- "JOI"
   distdest <- 2
  caso 2
   valido <- verdadeiro
   destino <- "GRU"
   distdest <- 3
  caso 3
   valido <- verdadeiro
   destino <- "GIG"
   distdest <- 4
  caso 4
   valido <- verdadeiro
   destino <- "BSB"
   distdest <- 6
  caso 5
   valido <- verdadeiro
   destino <- "SSA"
   distdest <- 8
  caso 6
   valido <- verdadeiro
   destino <- "MAO"
   distdest <- 14
  outrocaso
   escreval("respota invalida")
   valido <- falso
 fimescolha
ate valido = verdadeiro
Escreval("Escolha uma companhia aerea")
Escreval("[1] Azul")
Escreval("[2] LATAM")
Escreval("[3] GOL")

repita
 leia(resposta)
 escolha resposta
  caso 1
   valido <- verdadeiro
   companhia <- "Azul"
   horariopart <- horariopart-1
   se dia - 15 <=0 entao
    dia <- (diamax +(dia-15))
    mes <- mes - 1
   senao
    dia <- dia - 15
   fimse
  caso 2
   valido <- verdadeiro
   companhia <- "LATAM"
   horariopart <- horariopart+1
   se dia -6 <= 0 entao
    dia <- (diamax + (dia-6) )
    mes <- mes - 1
   senao
    dia <- dia -6
   fimse
  caso 3
   valido <- verdadeiro
   companhia <- "GOL"
   horariopart <- horariopart+2
   se dia - 20 <=0 entao
    dia <- (diamax + (dia-20))
    mes <- mes - 1
   senao
    dia <- dia - 20
   fimse
  outrocaso
   valido <- Falso
 fimescolha
ate valido = verdadeiro

distancia <- (distdest-distsai)

se (distancia < 0) entao
  distancia <- distancia*(-1)
fimse


horariocheg <- horariopart + distancia

se horariopart + distancia > 24 entao
 horariocheg <- horariopart - distancia
senao
 horariocheg <- horariopart + distancia
fimse


Escreval("Partida: ",saida)
escreval("Destino: ",destino)
Escreval("companhia: ",companhia)
Escreval("Data : ",dia,"/",mes,"/2025")
Escreval("Horario de saida : ",horariopart,":00")
Escreval("Horario de chegada: ",horariocheg,":00")



Fimalgoritmo
