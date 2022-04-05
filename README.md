# localstack-com-terraform

![image](https://user-images.githubusercontent.com/35838304/161778854-8195aa18-a162-4ab2-be77-c6386fcf62fb.png)


# Overview
LocalStack é um emulador de serviço de nuvem que é executado em um único contêiner em seu laptop ou em seu ambiente de CI.

Com o LocalStack, você pode executar seus aplicativos AWS ou Lambdas inteiramente em sua máquina local sem se conectar a um provedor de nuvem remoto!

Esteja você testando aplicativos CDK complexos ou configurações do Terraform, ou apenas começando a aprender sobre os serviços da AWS, o LocalStack ajuda a acelerar e simplificar seu fluxo de trabalho de teste e desenvolvimento.

O LocalStack oferece suporte a um número crescente de serviços da AWS, como AWS Lambda, S3, Dynamodb, Kinesis, SQS, SNS e muito mais!

Fonte: https://localstack.cloud/

# Emulando serviços
Nesse projeto o LocalStack está configurado para emular os serviços S3 e SQS que serão criados através do Terraform.

# Como utilizar 

Configurar o profile LocalStack:

    aws configure --profile localstack
    AWS Access Key ID [None]: test
    AWS Secret Access Key [None]: test
    Default region name [None]: us-east-1
    Default output format [None]: 

Obs: Requer AWS CLI - Instalação: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

## Executando o LocalStack com Terraform

Clonar o repositório:

    git clone https://github.com/carloscampos81/localstack-com-terraform.git

Executar o docker-compose:

    docker-compose up

## Verificando os serviços do LocalStack

Acessar o browser:

Status o LocalStack: 
    http://localhost:4566/#infra 

Status dos serviços AWS disponiveis: 
    http://localhost:4566/health
