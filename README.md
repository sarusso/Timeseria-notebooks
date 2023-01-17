# Timeseria-notebooks
Example notebooks using [Timeseria](https://github.com/sarusso/Timeseria): an object-oriented time series processing library.

⚠️ The plots in these notebooks are set to be rendered in image format by default, as otherwise they will not be displayed on GitHub or when loading them (usually because not [trusted](https://stackoverflow.com/questions/44943646/jupyter-notebook-not-trusted)).

Available notebooks:

*  [A Million Points](notebooks/A%20Million%20Points.ipynb)
*   [Forecasting - Advanced Evaluation.ipynb](notebooks/Forecasting%20-%20Advanced%20Evaluation.ipynb)
*   [Forecasting - Temperature - Periodic Averages.ipynb](notebooks/Forecasting%20-%20Temperature%20-%20Periodic%20Averages.ipynb)
*   [Forecasting - Temperature and humidity - LSTM.ipynb](notebooks/Forecasting%20-%20Temperature%20and%20humidity%20-%20LSTM.ipynb)
*   [Operations.ipynb](notebooks/Operations.ipynb)
*   [Plotting.ipynb](notebooks/Plotting.ipynb)
*   [Quickstart.ipynb](notebooks/Quickstart.ipynb)
*   [Welcome.ipynb](notebooks/blob/master/notebooks/Welcome.ipynb)

You can also run them interactively using the Timeseria Docker container:

    docker run -it -p8888:8888 -v$PWD/notebooks:/notebooks sarusso/timeseria:v1.0.1

Or, install Timeseria (`pip install timeseria==1.0.1`) and open them within your own Jupyter Notebook server.
