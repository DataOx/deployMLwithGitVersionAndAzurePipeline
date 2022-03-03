import numpy as np
import pandas as pd

from src.utils.pkg1 import add_int

import logging

logging.basicConfig(level='DEBUG')
logger = logging.getLogger(__name__)


def simple_program():
    x = 2
    y = 3
    z = add_int(x, y)
    logger.info(f'output is {z}')


if __name__ == "__main__":
    simple_program()
