import os

print('old path')
print(os.environ['PATH'])

old_path = os.environ['PATH']

home = os.environ['HOME']

print(home)

# new_path = os.getenv["PATH"] + home + "kind/bin/"
new_path = home + "/kind/bin/"


print('new path' + new_path)

os.environ['PATH'] = old_path + new_path

cmd = "bash export PATH=$PATH:$HOME/kind/bin/"
os.system(cmd)

# p = subprocess.call(["export", "PATH=$PATH:$HOME/kind/bin/"])
# output, err = p.communicate()
# print(output)
# print("export done")

print('final path')
print(os.environ['PATH'])

os.system('bash -c \'echo "PATH=$PATH:$HOME/kind/bin/" >> ~/.bashrc\'')
os.system('bash -c \'source ~/.bashrc\'')