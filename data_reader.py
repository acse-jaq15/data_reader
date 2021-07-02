"""Module containing a class to handle data pre-processing"""


class Data_Reader:
    """Class to handle data pre-processing"""

    def __init__(self, file_str, test_year):
        """
        Initialiser for Data_Reader class to read data in .csv format

        Parameters
        ----------

            filename (str):
                The file to be read, must be chosen from the following:

                Commodities
                -----------
                'Al' - LME 3 month aluminium futures
                'Cu' - LME 3 month copper futures
                'Corn' - CME rolling active month corn futures

                Currencies
                ----------
                'EURCHF' - spot Euro / Swiss currency pair
                'EURUSD' - spot Euro / US dollar currency pair
                'GBPUSD' - spot British pound / US dollar currency pair

                Fixed Income
                ------------
                'Bund10y' - rolling 10y German Bund yield
                'Gilt10y' - rolling 10y British Gilt yield
                'Treasury10y' - rolling 10y US Treasury yield

                Equities
                --------
                'Amazon' - NASDQ listed Amazon.com Inc. common stock
                'Google' - NASDAQ Alphabet Inc. class A common stock

            Note, all quotes are daily closing prices or yield

        Example
        -------
            Data_Reader('Al', 2019)
        """

        import pandas as pd

        # creating variables for directory traversing and file reading
        directory_str = './data/'
        suffix_str = '.csv'

        # creating file_str to read relevant file
        self.file_str = file_str
        self.test_year = test_year
        
        self.data = pd.read_csv(directory_str+file_str+suffix_str)
        self.data['date'] = pd.to_datetime(self.data['date'], dayfirst=True)
        self.data['date'] = self.data['date'].dt.date
        self.data['year'] = self.data['date'].dt.year

    def extract_train_test(self):
        """
        Method to extract training and test datasets

        Creates Data_reader.train_data and Data_reader.test_data attributes

        Parameters
        ----------
            None

        Example
        -------
            d_reader.extract_train_test()
            d_reader.train_data
            d_reader.test_data

        Returns
        -------
            None
        """

        max_year = max(self.data['year'])
        min_year = min(self.data['year'])

        if not max_year == self.test_year:
            raise ValueError('Test year is not last year of dataset')

        if min_year > self.test_year:
            raise ValueError('Test year is not included in dataset')

        mask = self.data['date'].dt.year == int(self.test_year)

        self.train_data = self.data.price[~mask]
        self.test_data = self.data.price[mask]
