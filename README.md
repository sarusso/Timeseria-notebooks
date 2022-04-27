# Timeseria-notebooks
Example notebooks using [Timeseria](https://github.com/sarusso/Timeseria): an object-oriented time series processing library.

Run with:

    docker run -it -p8888:8888 -v$PWD/notebooks:/notebooks sarusso/timeseria:v1.0.0


Or, install Timeseria (`pip install timeseria==1.0.0`) and use them from your own Jupyter Notebook server.

**Notes:**

- In case of bugs with the GitHub built-in Notebooks rendering engine (e.g. outputs not shown) you can head to [Timeseria notebooks on nbviewer](https://nbviewer.org/github/sarusso/Timeseria-notebooks/tree/master/notebooks/) to visualize them.
- The interactive plotting engine does not work in Jupyter Lab due to recent security restrictions.
