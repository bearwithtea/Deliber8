# 930, 964, and 993 Prices
### There are very few things I like more than cars, and even fewer than the air-cooled, pre-millenium-change 911s.

![KVb8J18Y-qrWlgVeb5J-(edit)](https://github.com/bearwithtea/CarsandBids-911-Prices/assets/132114816/b2c54a3e-1088-4cee-8a37-9dbd0562d4d0)

<p> The 930, 964, and 993 generations provide a driving experience that will never be seen again. With iconic and historied styling, powerful and dangerous engines, and an archive of <span><i>Rennsport</i></span> victories, these cars are every enthusiasts dream, whether they admit it or not. </p>

<p> Since they are every enthusiasts dream, the prices reflect their demand. This piqued my curiosity as I wanted to know if there was a chance I could ever own one. </p>

<p> My favorite auction house for cool, modern cars is Doug Demuro's <a href = "https://carsandbids.com/"> Cars and Bids</a> which focuses on cars newer than 1980, and has seen everything from bizzare Japanese <a href = "https://en.wikipedia.org/wiki/Kei_car"> Kei Cars</a> to Mclaren's insane hypercar, the <a href = "https://carsandbids.com/auctions/K14va7qM/2014-mclaren-p1"> P1.</a> I keep a hawkish eye on Porsche sales, just to see how the market is trending and if I will ever be able to get my hands on the incredible Porsche 911 964 Turbo S (pictured above). </p>

<p> After a lot of stalking, I wanted to be able to put some numbers to my market predictions (which weren't great). My tool set for this included a <a href = "https://www.webscraper.io/"> a webscraper</a>, Python, Pandas, and MatPlotLib. </p>

<hr>

## Webscraping
<p> This turned out to be significantly harder than I thought, because, as it turns out, web scraping isn't as easy as turning a Chrome extension onto a website like I originally expected.</p> 
<p> Eventually, I had to turn to <a href = "https://www.webscraper.io/"> webscraper.io</a>. This was a fanastic tool to grab basic text information, which I set-up to grab the name of the car, the price, and when it was sold. I then exported it into a Numbers file, where I could organize it and put it into a CSV. </p>

<img width="1901" alt="Screenshot 2024-03-08 at 1 12 07 PM" src="https://github.com/bearwithtea/CarsandBids-911-Prices/assets/132114816/13c2858f-63ba-4900-ab7b-def90c93afbd">
<hr>

## Code
<p> Until this project, I hadn't used Python for a little while, and it had been even longer since I had used Pandas, and MatPlotLib for any sort of analysis, so the re-learning curve took a bit longer than I expected. </p>

![Code export (3)](https://github.com/bearwithtea/CarsandBids-911-Prices/assets/132114816/a98c5bb9-442c-4050-bcca-da0bcb777203)

<p> The code is pretty basic, but it sees me reading the CSV file in, filtering out unnecessary information, and then plotting it based on the price and date it was sold/bid to on Cars and Bids. </p>

<p> Some of the more interesting bits of code come from setting up the interaction on the graph itself, which is done through mplcursors, a sub-library of MatPlotLib. </p>

<p> I chose a scatterplot for this graph because I felt it conveyed the correlation between pricing and date in an effective way. </p>

<hr>

## Graph

<img width="1100" alt="Screenshot 2024-03-08 at 1 22 37 PM" src="https://github.com/bearwithtea/CarsandBids-911-Prices/assets/132114816/f9455eeb-83f7-40d6-ad74-c62a07c81747">


https://github.com/bearwithtea/CarsandBids-911-Prices/assets/132114816/f1d03efe-9a08-4b16-a76e-60680643c555

<hr>

## Results
<p> This was not what I was expecting the data to look like. There's room for more analysis, but just at a brief glance, it doesn't look like prices are shooting up beyond attainability, which is good news for my dream of acquiring one. An important thing to note is that the prices stayed steady throughout the pandemic which is indicative of the strength of the market. </p>
