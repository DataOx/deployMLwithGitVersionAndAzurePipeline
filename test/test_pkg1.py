from src.utils.pkg1 import  add_int

def test_add_int():
    # verify the output
    output = add_int(3,9)
    assert output == 12
    

