# comprometimento

- excluir branchs remotas ao integrar na master - cada um ver se sua branch já foi integrada
- estrutura das branchs:
  - à definir

## nomenclaturas das branchs:

```
feat/FUNCIONALIDADE-ESPECIFICA
feat/FUNCIONALIDADE-ESPECIFICA/NOME_PESSOA

master
    feat/citronela
        feat/citronela/relatorio-citronela-agregado/jose
        feat/citronela/relatorio-citronela-agregado/maria

    feat/volmer/relatorio-agregado
    bugfix/correcao-relatorio-citronela
    feat/relatorio-geral-agregado

    certificacao (pra testar a integração de várias branches)
```


## padrões de commit:

```
feat(Vendas): faz nova venda para deficiente
feat(NotaFiscal): faz nova venda para deficiente
bugfix(NotaFiscal): correção
feat(NotaFiscal): faz nova venda para deficiente

feat(NotaFiscal): faz nova venda para deficiente
feat(NotaFiscal): WIP faz nova venda para deficiente
feat(NotaFiscal): WIP faz nova venda para deficiente
```
