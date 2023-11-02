# Library Management

## Dataset Information

- **Data Description:** The dataset comprises various book-related information, including titles, authors, publication details, and additional book attributes.

## Data Cleaning and Preprocessing

The project includes an IPython Notebook (`Library.ipynb`) that performs data cleaning and preprocessing on the dataset using the pandas library.

### Cleaning Operations

- **Loading Data**: Reads the 'books.csv' file to analyze the initial dataset.
- **Handling Missing Values**: Identifies and addresses missing values by dropping rows and columns with null values.
- **Data Type Conversions**: Converts specific columns to appropriate data types (e.g., numeric values, date-time formats).
- **Column Value Modification**: Adjusts 'authors' and 'title' columns by replacing specific characters and special symbols.

The cleaned dataset is saved as 'new_dataset.csv'.

## SQL Procedures

The project involves the creation of complex procedures in SQL for library management purposes.

### Procedures Created

- **CheckBookAvailability**: Checks the availability of a book in the library's inventory.
  - **Functionality**: Verifies book availability within the library inventory.
  - **Description**: Checks the presence and availability status of a specific book in the library's collection. This procedure confirms if the book is available for checkout.

- **Book_Checkout**: Allows book checkout for active members and maintains checkout records.
  - **Functionality**: Facilitates book checkout for active library members.
  - **Description**: Enables the checkout of books for members with an active status. It ensures that only active members can proceed with book checkout and records the transaction details.
 
### Project Purpose

The primary purpose of this project is to deepen my understanding of SQL, hone my data analysis skills, and explore various SQL queries and techniques. This project is a practice project, and I plan to modify it as I discover new topics and optimization techniques. Furthermore, I have plans to collect datasets that require extensive data cleaning and preprocessing in the future. These datasets will serve as the foundation for new projects, which I intend to develop either in SQL or Python.


### Future Scope

The project's future scope involves implementing a graphical user interface (GUI) to enhance user interaction and streamline library management processes.

## Tech Stack

- **SQL Server**: Utilized for creating and managing the database.
- **Google Colab**: Employed data preprocessing.

## Acknowledgments

**Dataset Source:** [Goodreads Books Dataset](https://www.kaggle.com/datasets/jealousleopard/goodreadsbooks)
