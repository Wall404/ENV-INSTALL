import os

print('old path')
print(os.environ['PATH'])

home = os.environ('HOME')

print(home)

os.environ["PATH"] = os.environ["PATH"] + home + "kind/bin/"

# cmd = "export PATH=$PATH:$HOME/kind/bin/"
# os.system(cmd)

# p = subprocess.call(["export", "PATH=$PATH:$HOME/kind/bin/"])
# output, err = p.communicate()
# print(output)
# print("export done")

print('new path')
print(os.environ['PATH'])