# Clase 07/06

https://github.com/XiaoyuShi97/VideoFlow

![Captura de pantalla 2024-06-07 164020](https://github.com/josefa52/audiv027-2024-1/assets/163590856/3d849fdb-fb82-42fc-b3ea-580dbfa9adfe)

https://github.com/princeton-vl/RAFT

![Captura de pantalla 2024-06-07 171502](https://github.com/josefa52/audiv027-2024-1/assets/163590856/fc3ebfd4-d097-4daf-a6fe-057ce7f8e0f4)

ojo con

- <https://stackoverflow.com/questions/74536730/unable-to-use-raft-optical-flow-in-google-collab>
- <https://github.com/itberrios/CV_projects/blob/main/RAFT/RAFT_exploration.ipynb>
- <https://colab.research.google.com/github/itberrios/CV_projects/blob/main/RAFT/RAFT_exploration.ipynb>

# Optical Flow Based Motion Detection for Autonomous Driving

https://github.com/kamanphoebe/MotionDetection 
![Captura de pantalla 2024-06-26 151312](https://github.com/josefa52/audiv027-2024-1/assets/163590856/c59ad305-fba6-455c-9ad7-73478a3e4b2e)

Se puede usar este comando para agregar cualquier video con este efecto
```
mkdir demo_infer
python demo_model_visual.py 
ffmpeg -r 2 -pattern_type glob -i './demo_infer/*.png' -pix_fmt yuv420p -b 8000k demo_visual.mp4
```
