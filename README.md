# Greetings

Hello there,

Thank you for your interest in our docker image of Cowan's Code. In this document I'll walk you through some important
things you'll need to know before you can start becoming a master of Cowan's Code. Or maybe you're already a master
and just need a quick and reliable way to download and use Cowan's Code. All are welcome here, so let's begin.

### HOW TO DOWNLOAD

---
The first, and most obvious, thing you will need to do before you start using Cowan's Code is to pull the lastest
version of the docker image from our DockerHub. To do so, open up your favorite terminal and enter:
```
docker pull mfdiscalajr/cowans-atomic-structure:latest
```
Once the pull is complete, we are ready to continue on. 
Next we need to run the docker image and link it to your local directory. To do so, let's enter:
```
mkdir /directory on your local system
```
Finally, we run the image with:
```
docker run -it -v /directory on your local system:/data mfdiscalajr/cowans-atomic-structure:latest
```
* ```-v directory on your local system:/data``` mounts your local directory to the container directory 
```/data ```

After those three steps, you're all setup. It's that easy! 
As a note, I have assumed you have already downloaded Docker and have a base understanding on how to use it. 
If you do not have docker installed, you can install it [here](https://www.docker.com/products/docker-desktop). Also, 
if you haven't registered for DockerHub, I suggest you do so [here](https://hub.docker.com/signup?next=%2F%3Fref%3Dlogin).

### USAGE

---
Cowan's Code has many amazing and useful programs within. I personally have used the code to calculate
Slater integrals and spin-orbit coupling, but the code is useful for much more. The SpeclabCowanGuide.pdf
and Utilities.pdf give a nice overview of the code's usage and how each of the three programs can be used.
That being said, I would suggest reading SpeclabcCowanGuide.pdf first if you are a beginner, then moving onto the
more detailed documentation. For more detailed explanations of each of the three programs, I suggest you read their
respective .pdf files, that is RCN.pdf, RCG.pdf, and RCE.pdf. All of this is also nicely laid out in the html files
that are generated when the code compiles.

### FILE LOCATIONS

---
Cowan's Code currently downloads to /usr/local/cowan. I say currently as we are hoping to change this location in
versions 1.1.x. So, as of now, this is where you can find all of the code, documentation, examples, etc. Explore
to your heart's content!

### BEFORE YOU BEGIN YOUR JOURNEY

---
Before you begin, you need to do a few things in the terminal to make your life EVEN easier. 
Let's copy the documentation from the Cowan code install directory to your local directory. This is necessary
as the .pdf and .html files are not accessible to read in the terminal.
```
cd /home/cowan/data
mkdir Documentation
cp -a /usr/local/cowan/html/ /data/Documentation
cp -a /usr/local/cowan/doc/ /data/Documentation
```
A **very important** note, any changes made outside of ```/data``` will be deleted when the container is closed. 
As we are on CentOS, you can use ```yum install``` to install any other dependencies you would like to download.

To exit the image, simply type ``` exit``` into your terminal.
If you want to close any open container you have open, enter:
```
docker rm $(docker ps -a -q)
```
Lastly, if you for whatever reason want to delete the image, enter:
```
docker rmi mfdiscalajr/cowan-atomic-structure:latest
```
### REFERENCES

---
Please note that this code is not originally mine. The current version of this code was developed by
[Dr. Cormac McGuinness](https://www.tcd.ie/Physics/people/Cormac.McGuinness/) at Trinity College Dublin in Dublin, Ireland. His code was converted from the original
code written by Robert D. Cowan. Dr. McGuinness is kind enough to host a repository of Cowan's Code 
[here](https://www.tcd.ie/Physics/people/Cormac.McGuinness/Cowan/).

Unfortunately, we lost Robert D. Cowan on July 26, 2018. Two very nice memoriams for him can be found [here](https://www.ladailypost.com/content/obituary-robert-duane-cowan-july-26-2018)
and [here](https://www.osa.org/en-us/about_osa/newsroom/obituaries/2018/robert_d_cowan/).

Thanks again, and have fun!

Michael DiScala -2019

