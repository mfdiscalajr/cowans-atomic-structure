FROM centos:6.10

ADD /PatchFiles/ PatchFiles/

RUN yum update;\
    # Add User
    #useradd -ms /bin/bash cowan;\
    # Install Dependencies
    echo INSTALLING DEPENDENCIES...;\
    yum -y install sudo;\
    yum -y install compat-gcc-34-g77.x86_64;\
    yum -y install tar;\
    yum -y install wget;\
    yum -y install texlive-*;\
    yum -y install latex2html;\
    yum -y install make;\
    yum -y install patch;\
    yum -y install rcs;\
    echo DOWNLOADING Cowan.tgz...;\
    cd /tmp/;\
    wget https://www.tcd.ie/Physics/people/Cormac.McGuinness/Cowan/Cowan.tgz;\
    tar zxvf Cowan.tgz;\
    echo PATCHING COWAN MAKEFILE TO USE g77!;\
    patch -d Cowan Makefile < /PatchFiles/Cowan_g77.patch;\
    echo PATCHING COMPLETE! MOVING TO MAKE...;\
    # Building Cowan Code, Documentation, Scripts, and Utilities
    cd Cowan/;\
    make;\
    echo MAKE COMPLETE! MOVING TO MAKE INSTALL...;\
    make install;\
    echo INSTALLATION COMPLETE!;\
    # Copying SpecLab directory from downloaded Cowan directory to our new working directory
    cp -a /tmp/Cowan/Speclab/. /usr/local/cowan/doc;\
    echo REMOVING BUILD DIRECTORIES...;\
    rm -r /tmp/*;\
    rm -r /PatchFiles/;

VOLUME ["/data"]
