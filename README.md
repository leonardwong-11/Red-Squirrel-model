# Red-Squirrel-model
A Mathematical Model of Red Squirrel Decline

This model tries to model red squirrel population in the UK. The main cause of death of red squirrel is a virus carries by grey squirrel which is lethal to only red squirrel. The model the population of the squirrels over time. The model also investigate the effect of culling and the effective culling rate at a particular virus transmission rate (beta).
The equation used is the Lotka-Volterra with a logistic term added. 

\begin{equation}
\label{eq:bpm}
 \frac{dR}{dt} = \alpha R (1-\frac{R+G}{k})- \beta RG
\end{equation}
\begin{equation}
\label{eq:bpm}
 \frac{dG}{dt} = -\gamma G + \delta G (1-\frac{R+G}{k})
\end{equation} 

The inital condition of 200 red squirrel and 10 grey squirrel, the parameter alpha = 1, gamma = 0.2, delta = 1, k =1000 is used for all figures.

<img width="1261" height="822" alt="red_grey" src="https://github.com/user-attachments/assets/c5d653f1-8270-4b4c-a2df-a5a7594f9d25" />
Figure of population of the red and grey squirrels over time. Beta = 0.05. 


<img width="1632" height="983" alt="heatmap" src="https://github.com/user-attachments/assets/ce203be0-62f9-4422-8c11-9503dbb4223b" />

<img width="1632" height="983" alt="effective_culling" src="https://github.com/user-attachments/assets/e2204186-5ed5-484a-b8d3-8436fee95ddf" />
Figure of the culling coefficient needed to ensure the survivial of red squirrel at a particular beta.
Notice the line of best fit stops after 0.15 as no amount of culling ca save the red squirrel population.
