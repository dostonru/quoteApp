# PearlsOfWisdom
![PearlsOfWisdom Screenshot](https://user-images.githubusercontent.com/37974149/222985269-178c41ae-d1be-4ac4-b285-2bb4a1d67f6c.png)

iOS Application that motivates you everyday

The app works by generating a random quote from a collection of quotes fetched from an external API. When the user opens the app, the collection of quotes is loaded into memory. The user can then tap a "Generate Quote" button to display a randomly selected quote and its author on the screen. If the user taps the button again, a new random quote is selected and displayed.

Behind the scenes, the app uses the URLSession API to fetch the collection of quotes from the external API when the app is launched. Once the quotes are fetched and decoded into an array of Quote objects, they are stored in memory for use when generating random quotes. When the "Generate Quote" button is tapped, the app selects a random quote from the array and updates the quote and author labels on the screen with the selected quote.

The app is designed to be simple and easy to use, with a clean user interface that focuses on the quote and author. The use of a randomly generated quote ensures that the user can discover new quotes and authors with each use of the app, making it a fun and engaging experience.



## Features

- Generates random quotes with every tap
- Displays a new random color with each quote
- Simple and intuitive user interface
- Works online

## Installation

1. Clone the repository to your local machine
2. Install pod dependencies
3. Open the project in Xcode
4. Run the app on a simulator or physical device

## Usage

1. Launch the app on your iOS device
2. Tap the feather to generate a new random quote
3. Watch as the app generates a new random color to accompany the quote

## Credits

PearlsOfWisdom was created by [Rustamov Dostonbek](https://github.com/dostonru).

## License

PearlsOfWisdom is available under the [MIT License](https://github.com/yourusername/feather-quotes/blob/main/LICENSE).
