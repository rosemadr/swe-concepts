# concurrency

## History
In early computing computers used to do one thing at a time, you had to finsh an operation/close an app to do something else.

Then we got multitasking - the CPU/OS quickly switches between applications/tasks so that the switch is inperceptible to the user.

Multithreading means that you can have multiple threads of execution within one program. One thread does something in an app and gets to execute on the CPU and then another thread does. As modern computers have multiple cores and or CPUs they can do this even more, multitasking across the CPUs/cores.

## Why multithreading?
Short answer: better utlisation of your CPU.

Also, better IO utilisation.

Higher application responsiveness: Long running tasks can be started in a seperate thread so that the GUI remains responsive.

## Multithreading issues
Issues depend on whether you're using a **shared mutablestate model** or not. Other models are seperate state concurrency, functional parallellism and parallel pipelines.



___

## Resources/citations
- https://youtu.be/mTGdtC9f4EU?si=kzq2ZOAUsIR81D5T
- https://jenkov.com/tutorials/java-concurrency/index.html 