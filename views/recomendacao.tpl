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
        #logo {
            max-width: 86px;
            float:left;
        }
        #rodape {
            position:absolute;
            bottom:20px;
            text-align:center;
            width:100%;
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
        <img id="funcionario" src="{{imagem_url}}" alt="Funcionário exemplar">
        <h2>{{recomendacao}}</h2>
        <a href="/recomendacao/{{hash_recomendacao}}">[ Permalink ]</a>
        <br />
        <div class="fb-share-button" data-href="http://recomendo.com.br/recomendacao/{{hash_recomendacao}}" data-layout="box_count"></div>
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
