# Installation
Run the following command to clone the repository
```
git clone https://github.com/Kunalkudande/grafana-and-prometheus.git
```
Go to ```frontend``` and ```backend``` directory to install packages
```
cd frontend
npm install
```
```
cd backend
npm install
```
# Configuration
Create ```.env``` file inside ```backend``` directory and copy the following code

```
MONGO_URI=Your mongodb URI
GMAIL_USERNAME=your gmail address 
GMAIL_PASSWORD=password created inside 'App Password' section under google accounts setting
PORT=8000
JWT_SECRET=a random secret key eg. thisisasecretkey
```
# Run the App
Go to ```backend``` and ```frontend``` directory and start the server
```
cd backend
nodemon server
```
```
cd frontend
npm start
```
# Live Preview
Check live preview here [https://todo-app-b96a5.web.app/](https://todo-app-b96a5.web.app/)


Pull the images from docker hub using : docker pull kunalk09/full_stack_todo_app:v1.0

Run on port No: 
React = http://localhost:3000/,
Prometheus = http://localhost:9090/,
Grafana = http://localhost:3001/.

