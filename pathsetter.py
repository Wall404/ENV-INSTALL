import subprocess

# os.environ["PATH"] = os.environ["PATH"] + ":$HOME/kind/bin/"

# cmd = "export PATH=$PATH:$HOME/kind/bin/"
# os.system(cmd)

p = subprocess.Popen(["export", "PATH=$PATH:$HOME/kind/bin/"], stdout=subprocess.PIPE)
output, err = p.communicate()
print(output)
print("export done")