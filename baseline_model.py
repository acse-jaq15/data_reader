"""Module containing a baseline model"""
import numpy as np


class Baseline_Model:
    """Class to perform baseline modelling"""

    def __init__(self, input_data, window_horizon):
        """
        Initialiser for Data_Reader class to read data in .csv format

        Parameters
        ----------

            input_data (array):
                array or array like X values to generate predictions

            window_horizon (int):
                X value time step length, predicting 1 time step ahead

        Example
        -------
            Data_Reader('Al', 2019)
        """

        self.input_data = input_data
        self.window_horizon = window_horizon

    def predict_y(self, test_len):
        """
        Method to predict y from X, where y is the mean
        of window_horizon time steps of X

        Parameters
        ----------
            None

        Example
        -------
            d_reader.normalise()
            d_reader.norm_price

        Returns
        -------
            y_pred as class attribute
        """

        self.y_pred = []
        X_data = np.array(self.input_data, ndmin=2)

        for i in range(0, test_len):
            self.y_pred.append(np.mean(X_data[i]))

        self.y_pred = np.array(self.y_pred, ndmin=2)
        self.y_pred = np.reshape(self.y_pred, (test_len -
                                               self.window_horizon, 1))
