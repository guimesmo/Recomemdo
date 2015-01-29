<!DOCTYPE html>
<html>
<head>
    <title>Esse eu "recomemdo"</title>
    <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
    <style type="text/css">
        body {
            margin:0;
            padding:0;
            font-family: 'PT Sans Narrow', sans-serif;
            background-color:#F1F1F1;
            color:#797979;
        }
        .box {
            margin-top:30px;
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
        #cabecalho {
            background: #616161;
            width:100%;
            padding: 5px 0 5px 0;
            text-align:center;
            color:#F1F1F1;
        }
        #rodape {
            text-align:center;
            width:100%;
        }
    </style>
</head>
<body>
    <div id="cabecalho">
        <h1>Esse eu "recomemdo"</h1>
    </div>
    <div class="box">
        <img id="funcionario" src="{{imagem_url}}" alt="Funcionário exemplar">
        <h2>{{recomendacao}}</h2>
        <a href="/recomendacao/{{hash_recomendacao}}">[ Permalink ]</a>
    </div>
    <div id="rodape">
        <small>
            Site fantasioso, humoristico e com caráter duvidável.
        </small>
    </div>
</body>
</html>
