#!/usr/bin/env python
# -*- coding: utf-8 -*-
from bottle import route, run, template
from hashlib import md5
import random

recomendacoes = open('recomendacoes.txt', 'r').readlines()
recomendacoes_hash = {md5(x).hexdigest(): x for x in recomendacoes}
imagens = open('imagens.txt', 'r').readlines()

def imagem():
    return random.choice(imagens)

@route('/')
def index():
    recomendacao = random.choice(recomendacoes)
    hash_recomendacao = md5(recomendacao).hexdigest()
    imagem_url = imagem()
    return template('recomendacao', **locals())

@route('/recomendacao/<hash_recomendacao>')
def recomendacao(hash_recomendacao):
    recomendacao = recomendacoes_hash.get(hash_recomendacao)
    imagem_url = imagem()
    if not recomendacao:
        return template(
            '<b>Recomendação não encontrada.</b>!')
    return template('recomendacao', **locals())


run(host='0.0.0.0', port=8080, reload=True)
