#!/usr/bin/env python
# -*- coding: utf-8 -*-
from bottle import route, run, template
from hashlib import md5
import random

recomendacoes = open('recomendacoes.txt', 'r').readlines()
recomendacoes_hash = {md5(x).hexdigest(): x for x in recomendacoes}

@route('/')
def index():
    recomendacao = random.choice(recomendacoes)
    hash_recomendacao = md5(recomendacao).hexdigest()
    return template('recomendacao', **locals())

@route('/recomendacao/<hash_recomendacao>')
def recomendacao(hash_recomendacao):
    recomendacao = recomendacoes_hash.get(hash_recomendacao)
    if not recomendacao:
        return template(
            '<b>Recomendação não encontrada.</b>!')
    return template('recomendacao', **locals())


run(host='0.0.0.0', port=8080)
