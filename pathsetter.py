import os

print('old path')
print(os.environ['PATH'])

home = os.environ['HOME']

print(home)

# new_path = os.getenv["PATH"] + home + "kind/bin/"
new_path = home + "kind/bin/"


print('new path' + new_path)

os.environ['PATH'].join(new_path)

# cmd = "export PATH=$PATH:$HOME/kind/bin/"
# os.system(cmd)

# p = subprocess.call(["export", "PATH=$PATH:$HOME/kind/bin/"])
# output, err = p.communicate()
# print(output)
# print("export done")

print('new path')
print(os.environ['PATH'])