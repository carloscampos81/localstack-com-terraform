# localstack-com-terraform

# Overview
LocalStack é um emulador de serviço de nuvem que é executado em um único contêiner em seu laptop ou em seu ambiente de CI.
Com o LocalStack, você pode executar seus aplicativos AWS ou Lambdas inteiramente em sua máquina local sem se conectar a um provedor de nuvem remoto!
Esteja você testando aplicativos CDK complexos ou configurações do Terraform, ou apenas começando a aprender sobre os serviços da AWS, o LocalStack ajuda a acelerar e simplificar seu fluxo de trabalho de teste e desenvolvimento.
O LocalStack oferece suporte a um número crescente de serviços da AWS, como AWS Lambda, S3, Dynamodb, Kinesis, SQS, SNS e muito mais!

Fonte: https://localstack.cloud/

# Emulando serviços
Nesse projeto o LocalStack está configurado para emular os serviços S3 e SQS que serão criados através do Terraform.