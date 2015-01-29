<!DOCTYPE html>
<html>
<head>
    <title>Recomendações da Zuera</title>
    <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
    <style type="text/css">
        body {
            font-family: 'PT Sans Narrow', sans-serif;
            background-color:#F1F1F1;
            color:#797979;
        }
        .box {
            text-align:center;
            width: 700px ;
            margin-left: auto ;
            margin-right: auto ;
        }
        #funcionario {
            -webkit-border-radius: 20px;
            -moz-border-radius: 20px;
            border-radius: 20px;
            -webkit-box-shadow: 0px 0px 13px 0px rgba(50, 50, 50, 0.75);
            -moz-box-shadow:    0px 0px 13px 0px rgba(50, 50, 50, 0.75);
            box-shadow:         0px 0px 13px 0px rgba(50, 50, 50, 0.75);
        }
    </style>
</head>
<body>
    <div class="box">
        <img id="funcionario" src="{{imagem_url}}" alt="Funcionário exemplar">
        <h1>{{recomendacao}}</h1>
        <a href="/recomendacao/{{hash_recomendacao}}">[ Permalink ]</a>
    </div>
</body>
</html>
