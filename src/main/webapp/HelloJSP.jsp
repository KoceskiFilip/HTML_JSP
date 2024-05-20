<!DOCTYPE html>
<html>
<head>
    <title>Random Background Color</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        #colorDisplay {
            margin-top: 20px;
            font-size: 20px;
            font-weight: bold;
        }
    </style>
    <script>
        function getRandomColor() {
            const letters = '0123456789ABCDEF';
            let color = '#';
            for (let i = 0; i < 6; i++) {
                color += letters[Math.floor(Math.random() * 16)];
            }
            return color;
        }

        function changeBackgroundColor() {
            const color = getRandomColor();
            document.body.style.backgroundColor = color;
            document.getElementById('colorDisplay').innerText = 'Current Color: ' + color;
        }
    </script>
</head>
<body>
    <h1>Random Background Color Changer</h1>
    <button onclick="changeBackgroundColor()">Change Background Color</button>
    <div id="colorDisplay">Current Color: #FFFFFF</div>
</body>
</html>
