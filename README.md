# Red-Squirrel-model
A Mathematical Model of Red Squirrel Decline

This model tries to model red squirrel population in the UK. The main cause of death of red squirrel is a virus carries by grey squirrel which is lethal to only red squirrel. The model find at what rate would the population of red suqirrel.
The equation used is the Lotka-Volterra with a logistic term added. 

\begin{equation}
\label{eq:bpm}
 \frac{dR}{dt} = \alpha R (1-\frac{R+G}{k})- \beta RG
\end{equation}
\begin{equation}
\label{eq:bpm}
 \frac{dG}{dt} = -\gamma G + \delta G (1-\frac{R+G}{k})
\end{equation} 

Figure plotted below with beta varied.

