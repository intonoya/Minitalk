# Minitalk

This project involves creating client and server programs that communicate with each other via UNIX signals.
## How it works and what it does
- To not sound boring, let's look at its general responsibilities:
  
  - The server starts first and prints its PID after launch.
  - The client takes two parameters: the server PID and the string to send.
  - The client sends the string to the server using only UNIX signals (SIGUSR1 and SIGUSR2).
  - The server receives the string and prints it quickly.
