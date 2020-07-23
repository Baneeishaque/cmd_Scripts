Set /P ip=Enter Remote IP : 
ssh -R 5037:localhost:5037 Administrator@%ip%