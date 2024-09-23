document.getElementById('soilPredictionForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const formData = new FormData(event.target);
    const temperature = parseFloat(formData.get('temperature'));
    const humidity = parseFloat(formData.get('humidity'));
    const ph = parseFloat(formData.get('ph'));

    const prediction = predictSoilCharacteristics(temperature, humidity, ph);
    document.getElementById('prediction').innerText = `Predicted soil characteristics: ${prediction}`;
});

function predictSoilCharacteristics(temperature, humidity, ph) {
    // Replace this with your actual prediction logic
    // Here, we'll assume a simple prediction based on the values
    if (temperature > 25 && humidity > 60 && ph > 6.5) {
        return 'Rich in organic matter';
    } else if (temperature < 20 && humidity < 50 && ph < 6.0) {
        return 'Sandy soil';
    } 
    else if (temperature > 20 && humidity > 50 && ph > 6)  {
        return 'Red soil';
    }
    else {
        return 'Normal soil';
    }
}
