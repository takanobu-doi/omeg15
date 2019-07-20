import numpy as np
import matplotlib.pyplot as plt

x = np.arange(-5,5,0.001)
y = 1/(1+np.exp(-x))

plt.rcParams["font.family"] = "sans-serif"
plt.rcParams["font.size"] = 12
plt.rcParams["xtick.direction"] = "in"
plt.rcParams["ytick.direction"] = "in"
fig = plt.figure(figsize=(4,2))
ax = fig.add_subplot(1,1,1)
ax.xaxis.set_ticks_position("both")
ax.yaxis.set_ticks_position("both")
ax.plot(x,y,"k")
ax.set_xlabel("x")
ax.set_ylabel("sigmoid(x)")
fig.show()
fig.savefig("sigmoid.eps",bbox_inches="tight")
#input()
