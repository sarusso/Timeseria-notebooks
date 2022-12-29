# Timeseria-notebooks
Example notebooks using [Timeseria](https://github.com/sarusso/Timeseria): an object-oriented time series processing library.

⚠️ These Notebooks render with limited features (e.g. no plots) if opened on GitHub, please open them using [NBViewer](https://nbviewer.org/github/sarusso/Timeseria-notebooks/tree/master/notebooks/) with the following links.

Available Notebooks:

*  [A Million Points](https://nbviewer.org/github/sarusso/Timeseria-notebooks/blob/master/notebooks/A%20Million%20Points.ipynb)
*   [Forecasting - Advanced Evaluation.ipynb](https://nbviewer.org/github/sarusso/Timeseria-notebooks/blob/master/notebooks/Forecasting%20-%20Advanced%20Evaluation.ipynb)
*   [Forecasting - Temperature - Periodic Averages.ipynb](https://nbviewer.org/github/sarusso/Timeseria-notebooks/blob/master/notebooks/Forecasting%20-%20Temperature%20-%20Periodic%20Averages.ipynb)
*   [Forecasting - Temperature and humidity - LSTM.ipynb](https://nbviewer.org/github/sarusso/Timeseria-notebooks/blob/master/notebooks/Forecasting%20-%20Temperature%20and%20humidity%20-%20LSTM.ipynb)
*   [Operations.ipynb](https://nbviewer.org/github/sarusso/Timeseria-notebooks/blob/master/notebooks/Operations.ipynb)
*   [Plotting.ipynb](https://nbviewer.org/github/sarusso/Timeseria-notebooks/blob/master/notebooks/Plotting.ipynb)
*   [Quickstart.ipynb](https://nbviewer.org/github/sarusso/Timeseria-notebooks/blob/master/notebooks/Quickstart.ipynb)
*   [Welcome.ipynb](https://nbviewer.org/github/sarusso/Timeseria-notebooks/blob/master/notebooks/Welcome.ipynb)

You can also run them interactively using Timeseria's Docker container:

    docker run -it -p8888:8888 -v$PWD/notebooks:/notebooks sarusso/timeseria:v1.0.1

Or, install Timeseria (`pip install timeseria==1.0.1`) and open them within your own Jupyter Notebook server. In this case you'll need to mark the notebooks as [trusted](https://stackoverflow.com/questions/44943646/jupyter-notebook-not-trusted) or re-run them in order to display the plots.
