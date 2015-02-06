# -*- coding: utf-8 -*-

import re
import unidecode
from hashlib import md5


def hasher(text):
    text = unidecode.unidecode(text).lower()
    text = re.sub(r'\W+', '-', text)
    return md5(text).hexdigest()