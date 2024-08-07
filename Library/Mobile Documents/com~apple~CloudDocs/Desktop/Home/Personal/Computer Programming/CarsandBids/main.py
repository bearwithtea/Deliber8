import pandas as pd
import matplotlib.pyplot as plt
import mplcursors

data = pd.read_csv('Cars and Bids - Pricing.csv')

data['Date Sold'] = pd.to_datetime(data['Date Sold'])

data['Price'] = data['Price'].str.replace(',', '').astype(float) #standardize the price column

plt.figure(figsize=(10, 6))
scatter = plt.scatter(data['Date Sold'], data['Price'], marker='o', s=10, label='Price')

annotation_text = [f"{row['Car']}\nPrice: ${'{:,.2f}'.format(row['Price'])}\nDate Sold: {row['Date Sold'].strftime('%Y-%m-%d')}"
                   for _, row in data.iterrows()]

cursor = mplcursors.cursor(hover=True)
cursor.connect("add", lambda sel: sel.annotation.set_text(annotation_text[sel.target.index]))

cursor.annotation_kwargs = {'backgroundcolor': 'lightyellow'}

plt.title('930, 964, and 993 Prices')
plt.xlabel('Date Sold')
plt.ylabel('Price')
plt.legend()
plt.show()