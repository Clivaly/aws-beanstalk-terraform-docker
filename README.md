Para criar a infraestrutura, execute o terraform apply em uma das pastas de Produção (`env/Prod`) ou de Homologação (`env/homolog`) de acordo com o ambiente desejado.

Em seguida atualize o ambiente para a ultima versão de produção com:

```
aws elasticbeanstalk update-environment --environment-name production-environment --version-label production-environment
```

ou para homologação com:

```
aws elasticbeanstalk update-environment --environment-name homolog-environment --version-label homolog-environment
```