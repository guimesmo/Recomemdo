<!DOCTYPE html>
<html>
<head>
    <title>Esse eu "recomemdo"</title>
    <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
    <style type="text/css">
        * {
            margin:0;
            padding:0;
            border:0;
        }
        ul {
            list-style: none;
        }
        body {

            font-family: 'PT Sans Narrow', sans-serif;
            background-color:#F1F1F1;
            color:#797979;
        }
        h1 {
            margin-bottom: 15px;
            font-size: 32px;


        }
        h2 {
            font-size: 25px;
            margin-bottom: 15px;
            color: #696969;
        }
        h3 {
            margin-bottom: 15px;
        }
        #descricao {
            font-size: 22px;
            font-style: italic;
        }
        .box {
            margin-top:30px;
            text-align:left;
            width: 960px ;
            margin-left: auto ;
            margin-right: auto ;
        }
        #funcionario {
            wiidth: 200px;
            height: 200px;
            float: left;
            margin: 0 15px 15px 0;
            -webkit-border-radius: 20px;
            -moz-border-radius: 20px;
            border-radius: 20px;
            -webkit-box-shadow: 0px 0px 13px 0px rgba(50, 50, 50, 0.75);
            -moz-box-shadow:    0px 0px 13px 0px rgba(50, 50, 50, 0.75);
            box-shadow:         0px 0px 13px 0px rgba(50, 50, 50, 0.75);
        }
        #outros {
            text-align: left
        }
        #outros li{
            margin-bottom: 5px;
        }
        #cabecalho {
            background: #616161;
            width:100%;
            padding: 5px 0 5px 0;
            text-align:center;
            color:#F1F1F1;
        }
        #logo {
            max-width: 64px;
            position: absolute;
            left:15px;
            top:0;
        }
        #rodape {
            text-align:center;
            width:100%;
        }
        #funcionario_principal {
            overflow: hidden;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <div id="cabecalho">
        <img src="http://2.bp.blogspot.com/-0HTej3y4skQ/UBBJunR6cgI/AAAAAAAAAUY/IvrXf9xV1xI/s1600/joinha.png" id="logo">
        <h1>
            Esse eu "recomemdo"
        </h1>
    </div>
    <div class="box">
        <div id="funcionario_principal">
            <img id="funcionario" src="{{imagem_url}}" alt="Funcionário exemplar">
            <h1>{{ recomendacao["nome"] }}</h1>
            <h2>{{ recomendacao["profissao"] }}</h2>
            <p id="descricao">{{recomendacao["descricao"]}}</p>
        </div>
        <div id="outros">
            <h3>Outras informações</h3>
            <ul>
                % for informacao in informacoes:
                <li>{{informacao}}</li>
                % end
            </ul>
            <a href="/recomendacao/{{hash_recomendacao}}">[ Permalink ]</a>
            <br />
            <br />
            Não gostou dessa? Veja <a href="/nova_recomendacao">aqui</a> outra "recomemdação".
            <br />
            <br />
            <div class="fb-share-button" data-href="http://recomendo.com.br/recomendacao/{{hash_recomendacao}}" data-layout="box_count"></div>
        </div>
    </div>
    <div id="rodape">
        <small>
            Site fantasioso, humoristico e com caráter duvidável.
        </small>
    </div>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
</body>
</html>
