import subprocess
from importlib.resources import files

shelly = files('example').joinpath('test.sh')

def main():
    print("howdy, partner!")
    sub()

def sub():
    subprocess.run(["bash", shelly], shell=True)
    print(shelly)
