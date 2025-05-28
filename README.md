# Timeseria-notebooks

Example notebooks using [Timeseria](https://github.com/sarusso/Timeseria): an object-oriented time series processing library.

⚠️ The plots in these notebook are configured to be rendered as images, because otherwise they won't display correctly on GitHub or when the notebooks are loaded (usually because not [trusted](https://stackoverflow.com/questions/44943646/jupyter-notebook-not-trusted)).

Available notebooks:

*  [A Million Points](notebooks/A%20Million%20Points.ipynb)
*  [Anomaly detection - Temperature and humidity - LSTM](notebooks/Anomaly%20detection%20-%20Temperature%20and%20humidity%20-%20LSTM.ipynb)
*   [Forecasting - Advanced Evaluation.ipynb](notebooks/Forecasting%20-%20Advanced%20Evaluation.ipynb)
*   [Forecasting - Temperature - Periodic Averages.ipynb](notebooks/Forecasting%20-%20Temperature%20-%20Periodic%20Averages.ipynb)
*   [Forecasting - Temperature and humidity - LSTM.ipynb](notebooks/Forecasting%20-%20Temperature%20and%20humidity%20-%20LSTM.ipynb)
*   [Forecasting - Temperature - Probabilistic LSTM.ipynb](notebooks/Forecasting%20-%20Temperature%20-%20Probabilistic%20LSTM.ipynb)
*   [Forecasting - Temperature - Probabilistic Periodic Averages.ipynb](notebooks/Forecasting%20-%20Temperature%20-%20Probabilistic%20Periodic%20Averages.ipynb)
*   [Operations.ipynb](notebooks/Operations.ipynb)
*   [Plotting.ipynb](notebooks/Plotting.ipynb)
*   [Quickstart.ipynb](notebooks/Quickstart.ipynb)
*   [Welcome.ipynb](notebooks/Welcome.ipynb)

You can also run them interactively using the Timeseria Docker container:

    docker run -it -p8888:8888 -v$PWD/notebooks:/notebooks sarusso/timeseria:v2.2.0

Or, you can install Timeseria (`pip install timeseria`) and run them within your own environment. In this case please ensure Timeseria >= v2.2.