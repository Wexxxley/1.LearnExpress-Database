# LearnExpress Database

Este é uma projeto pessoal de um banco de dados usando `PostgreSQL`para gerenciar uma plataforma de cursos online. O esquema foi desenvolvido com base em um modelo EER (Também criado por mim) e inclui tabelas como `usuario`, `curso`, `pedido`, `certificado`, entre outras.
Este projeto aborda aspectos fundamentais de banco de dados, incluindo modelagem de dados, relacionamentos entre entidades e funcionalidades específicas de uma plataforma de cursos online.

## Estrutura do Projeto
- `Modelo/` - Contém os diagramas EER e URL.
- `Scripts/` - Contém os scripts SQL para criar o esquema e inserir dados.

## Estrutura do Banco de Dados

- **Usuario**: Contém dados dos usuários.
- **Curso**: Armazena informações dos cursos, como título, professor, descrição, duração, e preço.
- **Pedido**: Registra os pedidos dos cursos realizados pelos usuários.
- **Certificado**: Armazena os certificados emitidos para os usuários.
- **Porcent_Conclu_Curso**: Registra a porcentagem de conclusão dos cursos pelos usuários.
- **Categoria** e **idCurso_Categoria**: Relaciona cursos a categorias.
- **Aula**: Armazena as aulas dos cursos.
- **Comentario**: Guarda os comentários feitos pelos usuários em cada aula.
- **Material_complementar**: Material adicional para as aulas.
- **Nota_Material_Complementar**: Notas dadas pelos usuários aos materiais complementares.

## Como criar o Banco de dados localmente

1. Execute o script `scriptLearnExpress.sql` para criar o esquema.
2. Use `scriptLearnExpressInserts.sql` para inserir dados iniciais.

