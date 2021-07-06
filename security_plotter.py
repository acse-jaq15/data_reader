"""Module containing a class to handle plotting"""
import pandas as pd
import matplotlib.dates as mdates
import matplotlib.pyplot as plt


class Security_Plotter:
    """Class to perform plotting"""

    def __init__(self, date_series, y_actual, y_pred, y_dummy, train_len,
                 window_len, security_str):
        """
        Initialiser for Security_Plotter class

        Parameters
        ----------
            date_series (array):
                array or array like date values of dates

            y_actual (array):
                array or array like actual price data

            y_pred (array):
                array or array like predicted price data

            y_dummy (array):
                array or array like dummy price data

            train_len (int):
                an integer recording the length of the training dataset

            window_len (int):
                an integer recording the length of the prediction window

            security_str (str):
                a string of the relevant security

        Example
        -------
            Security_Plotter(dates, actual_prices, pred_prices, dummy_prices,
                             250, 30, security_dict, security_str)
        """

        self.date_series = date_series
        self.y_actual = y_actual
        self.y_pred = y_pred
        self.y_dummy = y_dummy
        self.train_len = train_len
        self.window_len = window_len
        self.security_dict = {
                'Al': 'LME Aluminium 3m futures price',
                'Cu': 'LME Copper 3m futures price',
                'Corn': 'CME rolling active month corn futures price',
                'EURCHF': 'Spot Euro/Swiss Franc exchange rate',
                'EURUSD': 'Spot Euro/US dollar exchange rate',
                'GBPUSD': 'Spot British Pound/US dollar exchange rate',
                'Bund10y': '10y German Bund yield',
                'Gilt10y': '10y British Gilt yield',
                'Treasury10y': '10y US Treasury yield',
                'Amazon': 'Amazon.com Inc. common stock price',
                'Google': 'Alphabet Inc. class A common stock price'
                }

    def single_plot(self, train_len, window_len):
        """
        Method to plot y_acutal, y_pred and y_dummy

        Parameters
        ----------
            train_len (int):
                an integer recording the length of the training dataset

            window_len (int):
                an integer recording the length of the prediction window

        Example
        -------
            Security_Plotter.plot(250, 30)

        Returns
        -------
            plot of prices, to console or notebook
        """

        # converting to datetime date format and slicing
        date_time = self.date_series.data.date[self.train_len +
                                               self.window_len:]
        # converting the series to datetime using pandas
        series_dates = pd.to_datetime(date_time).dt.date
        # resetting index to 0 based
        series_dates = series_dates.reset_index(drop=True)
        # converting to matplotlib format
        series_dates = mdates.date2num(series_dates)

        # setting YearLocator
        years = mdates.YearLocator()
        # setting MonthLocator
        months = mdates.MonthLocator()
        # setting format to give year and verbose month '2019-Jan'
        d_format = mdates.DateFormatter('%Y-%b')

        # creating our figure and axes
        fig, ax = plt.subplots()
        # setting image size inches
        fig.set_size_inches(12, 6)
        # plotting the various y values
        ax.plot(series_dates, self.y_acutal, label='Acutal Price')
        ax.plot(series_dates, self.y_pred, label='Predicted Price')
        ax.plot(series_dates, self.y_dummy, label='Dummy Price')
        # setting x axis label
        ax.set_xlabel('Date')
        # getting y axis label from .security_dict attribute
        ax.set_ylabel(self.security_dict[self.security_str])
        # setting title
        ax.set_title(self.security_str+' Acutal, Predicted and Dummy Prices')
        # defining legend
        ax.legend()
        # informing matplotlib that x axis contains dates
        ax.xaxis_date()
        # implementing the formatter
        fig.autofmt_xdate()

        # setting minor and major locators and format
        ax.xaxis.set_major_locator(months)
        ax.xaxis.set_major_formatter(d_format)
        ax.xaxis.set_minor_locator(years)
