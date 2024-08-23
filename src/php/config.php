<?php
$dbhost = 'localhost';
$dbUsername = 'admim';
$dbPassword = '1315';
$dbName = 'Formulario-agrotec';

$conexao = new mysqli($dbhost,$dbUsername,$dbPassword,$dbName);

if($conexao->connect_errno)
{
    echo "Erro";
}
else
{
    echo "Conexao efetuada com sucesso"
}
?>