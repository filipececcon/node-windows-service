# Node and Windows-Service
Atualmente precisei criar um serviço windows com Node. Obviamente para tudo no Node temos um pacote npm e fui esperançoso em encontrar algo lá e achei o pacote windows-service. De início pensei que fosse um simples install e pronto, mas não, você terá uma jornada ao fazer…

Você terá de instalar o Python 2.7, configurar variável de ambiente, configurar o node-gyp, instalar um Visual Studio Community 2015 para referenciar o compilador e etc… para mais detalhes sobre a instalação acesse a pagina do pacote npm windows-service.

Achei muito trabalhoso criar todo esse ambiente para fazer algo simples, com o prazo curto coloquei a minha bagagem de 5 anos trabalhando com suporte em prática. Resumindo vamos criar um serviço e apontar um batch para execução em looping.

[Clique aqui](http://filipececcon.com.br/tecnologia/nodejs-criando-um-windows-service-sem-pacotes-npm/) e veja toda a explicação no blog
