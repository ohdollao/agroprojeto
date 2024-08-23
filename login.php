<?php
// Configuração do banco de dados
$host = 'localhost';
$db = 'agronomia1';
$user = 'root'; // substitua pelo seu usuário MySQL
$pass = ''; // substitua pela sua senha MySQL

// Conectar ao banco de dados
$conn = new mysqli($host, $user, $pass, $db);

// Verificar a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Verificar se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $usuario = $_POST['nome'];
    $senha = $_POST['senha'];

    // Buscar o usuário no banco de dados
    $sql = "SELECT senha FROM usuarios WHERE nome = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $usuario);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $stmt->bind_result($senha_criptografada);
        $stmt->fetch();

        // Verificar a senha
        if (password_verify($senha, $senha_criptografada)) {
            // Login bem-sucedido, redirecionar para a página de produto
            header("Location: /agroprojeto/cliente.html");
            exit(); // Garantir que o script pare de ser executado após o redirecionamento
        } else {
            echo "Senha incorreta!";
        }
    } else {
        echo "Usuário não encontrado!";
    }

    $stmt->close();
}
$conn->close();
?>
