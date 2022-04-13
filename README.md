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

## Requer :

    AWS CLI : https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
    DOCKER  : https://docs.docker.com/get-docker/
    DOCKER-COMPOSE : https://docs.docker.com/compose/install/
    
# Como utilizar 

Configurar o profile LocalStack:

    aws configure --profile localstack
    AWS Access Key ID [None]: test
    AWS Secret Access Key [None]: test
    Default region name [None]: us-east-1
    Default output format [None]: 

## Executando o LocalStack com Terraform

Clonar o repositório:

    git clone https://github.com/carloscampos81/localstack-com-terraform.git

Executar o docker-compose:

    docker-compose up

## Verificando os serviços do LocalStack

Acessar o browser:

Status do serviço do LocalStack: 
    http://localhost:4566/#infra 

Status dos serviços AWS disponiveis: 
    http://localhost:4566/health

## Acessando o LocalStack Dashboard

Acesse o link https://app.localstack.cloud/

Clique em Sign Up:

![image](https://user-images.githubusercontent.com/35838304/163221502-ab77219f-d634-4fe0-b7f6-4e6dd0b612d0.png)

Preenchas as informações:

![image](https://user-images.githubusercontent.com/35838304/163221901-6665950a-980a-4473-b1d1-c152d3bd6893.png)


Obs: Será enviado um e-mail de confirmação para a conta de e-mail cadastrada


## Acessando o Local Dashboard Resources


![image](https://user-images.githubusercontent.com/35838304/163222882-76d0199c-929c-4af2-b709-3f3da5bfe92a.png)

![image](https://user-images.githubusercontent.com/35838304/163223003-401ac270-0450-4ada-a0ae-fe27342d2aac.png)

![image](https://user-images.githubusercontent.com/35838304/163223079-a1b27795-9d59-4e57-886a-6e0e4ec6a186.png)

![image](https://user-images.githubusercontent.com/35838304/163223142-c89df065-9c41-4942-96c4-ce50c9e4d59a.png)






