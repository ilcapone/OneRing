# OneRing

 One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them
 
 You can see in this [slides](https://www.slideshare.net/A2SECURE/security-for-microservices-in-gcp) how to perform the attack.The explanation of the technique OneRing begins on slide 32.

 
## Basic
 
 This is the basic PoC. The idea is use de `securityContext: fsGroup: 412`, this is the group ID of docker group on k8s nodes. Also is necesary mount de volum `/var/run/docker.sock`
 
 To perdorm a test:
 
 `$ kubectl applay -f elevate-priv-deploy.yaml`
 
 Them you can acces to the new pod created and control all de container inside de node:
 
 `$ kubectl exec -it [pod-onring-name] -- /bin/sh`
 
 `[pod-onring-name]$ docker ps`
 
