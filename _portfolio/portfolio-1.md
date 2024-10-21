---
title: "EyeSpy AI: Retinal Video Sequences"
excerpt: "<img style='border-radius:15px; width: 400px; height: 228.57px;' src='../images/eye.png'>"

collection: portfolio
---

* For our entry in UC Berkeley's 5th Annual Datathon, I, along with my three teammates Jonathan Ferrari, Dhruv Pendharkar, and Miles Wang, crafted a Variational Autoencoder capable of producing videos from retinal scans and their numerical frameshift sequences. We earned an Honorable Mention in the competition.
* The link to our presentation can be found <a href = "https://docs.google.com/presentation/d/1fZJEeBDwHreNEdTuemGBR1qd5tEJIVjMFvc1yjGkomQ/edit?usp=sharing" target = "_blank">here!</a>


## Description 
* The GitHub Repo for this project can be found <a href = "https://github.com/jonathanferrari/datathon-cv" target = "_blank">here!</a>
* Coded a Variational Auto-Encoder (VAE) neural network to convert retinal movement numerical data into generative AI video simulations of retinal movement afflicted by one of three different diseases
* Implemented a data preprocessing pipeline that converts .avi files into sets of 300 individual frames
* Ran training data through a Long-Short Term Memory (LSTM) network to encode data into latent space, then decoded data using a Gated Recurrent Unit (GRU), producing video simulations in 512x512 resolution

### Tools
* Python 
* NumPy
* PyTorch
* Cv2

### Skills
* Computer Vision 
* Machine Learning 
* Deep Learning