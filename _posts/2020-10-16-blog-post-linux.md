---
title: 'Linux For Beginners'
date: 2020-10-17
permalink: /posts/2020/10/blog-post-linux/
categories:
  - Resources
tags: 
  - Linux
---

This paper summarizes some common and basic usages of Linux. The information is only suitable for beginners.

{% include toc %}

# Overview
Linux Test

# How To Start
1. If you are using Windows OS, you can access to the remote server by 
* Putty 
* MobaXterms (recommended)
* [How to configure Putty & Xming (on your laptop)](http://laptops.eng.uci.edu/software-installation/using-linux/how-to-configure-xming-putty){:target="_blank"} from University of California, Irvine

1. Basic Commands
`cd`, `ls`, `mkdir`, `pwd`, `cat`, `grep`,`sudo`


# Common Usage
1. [Ubuntu Documentation on How to Use the Terminal](https://help.ubuntu.com/community/UsingTheTerminal){:target="_blank"}
1.  Graphic Notebook Editor
* Command: `gedit file_name.extension`
1. `vim` [getting started](https://opensource.com/article/19/3/getting-started-vim){:target="_blank"}
1. Display information of your active processes.
* Command: `ps -ef | grep loginname` Or `ps -ef | grep first_7_characters_of_your_loginname_if_it_is_longer_than_8_characters`

1. Kill A Process
* Command: `kill PID`

1. Copy all the contents of ~/folder1 to ~/new_folder1: `cp -r ~/folder1/. ~/new_folder1`

1. Module
* Check available modules: `module avail`
* Check loaded modules: `module list`
* Load a module: `module load apps/MATLAB/R2020a`
* Unload a module: `module unload apps/MATLAB/R2020a`

# Running Matlab Remotely in a Server
Step 1: Load Matlab
* Command: `module load apps/MATLAB/R2020a`

Step 2: Run Matlab without GUI and in the background
* Command: `nohup matlab -r MatlabScriptName -nodisplay - nosplash -nojvm -nodesktop &`

The above command may output Bad file descriptor and Warning: “Error reading Character from command line" error. In this case, using the following command instead:

`nohup matlab -nodesktop -nosplash -nodisplay < main.m >log.txt 2>&1   &`

Explanation: [https://www.programmersought.com/article/91451058498/](https://www.programmersought.com/article/91451058498/){:target="_blank"}
> ">log.txt" refers to redirecting the output to log.txt. 2>&1 means to input the error information into log.txt, 2 Refers to the standard input and output error (stderr), 1 refers to the standard output (stdout), 2> & 1 means 2 is equivalent to 1 output, the last & is the meaning of background operation, combined with the nohup command. 


# Tutorial:
* [How to run Matlab on server, University of Calgary](https://people.ucalgary.ca/~yauf/How_to_run_Matlab_on_server.htm){:target="_blank"}
* [How do I run my program in the background (including the use of 'screen')?](https://statistics.berkeley.edu/computing/background-program){:target="_blank"}, University of California, Berkeley

