import subprocess

# os.environ["PATH"] = os.environ["PATH"] + ":$HOME/kind/bin/"

# cmd = "export PATH=$PATH:$HOME/kind/bin/"
# os.system(cmd)

p = subprocess.call(["export", "PATH=$PATH:$HOME/kind/bin/"])
output, err = p.communicate()
print(output)
print("export done")