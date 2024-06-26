[mi-proyecto.zip](https://github.com/user-attachments/files/15994187/mi-proyecto.zip)
![Captura de pantalla 2024-06-26 144758](https://github.com/angebv00/audiv027-2024-1/assets/163590234/7bae209c-7f4f-46a0-8d93-edb6c4ad57c2)
![Captura de pantalla 2024-06-26 150340](https://github.com/angebv00/audiv027-2024-1/assets/163590234/22ba8e2d-5fc8-49f0-9126-76087cbee360)
![Captura de pantalla 2024-06-26 150353](https://github.com/angebv00/audiv027-2024-1/assets/163590234/38c7144b-3c27-4784-94a0-81cb4ca3ca5f)
![Captura de pantalla 2024-06-26 150416](https://github.com/angebv00/audiv027-2024-1/assets/163590234/eb90f814-1fb0-4b21-a873-2bd4d0d69697)
![imagen](https://github.com/angebv00/audiv027-2024-1/assets/163590234/483beea7-4e5a-40dd-ba47-c411e02351f6)

```
<!DOCTYPE html>
<html>

<head>
    <title>PoseNet - Camera Feed Demo</title>
    <link rel="stylesheet" href="css/style.d2841a7d.css">
    <link rel="icon" href="images/favicon.a0c961ca.ico" type="image/png">
    <!-- fonts -->
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Archivo+Black" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Mono" rel="stylesheet">
</head>

<body>
    <div id="info" style="display:none"></div>
    <div id="loading">Loading the model...</div>
    <div id="main" style="display:none">
        <div id="record-button-container">
            <button id="start-loop" contenteditable="false">Start recording loop</button>
            <button id="stop-loop" contenteditable="false">Stop recording loop</button>
        </div>
        <video id="video" playsinline style="transform: scaleX(-1); display: none;"></video>
        <div id="canvas-container">
            <canvas id="livestream"></canvas>
            <canvas id="output"></canvas>
        </div>
        <div id="loopingCanvas-container"></div>
    </div>
    <script src="js/main.8dfc7d0a.js"></script>
</body>

</html>
```
