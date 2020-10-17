---
title: 'Linux'
date: 2020-10-17
permalink: /posts/2020/10/blog-post-linux/
categories:
  - Resources
tags: 
  - Linux
---

This paper summarizes resources for Linux

{% include toc %}

# Overview

# Running Matlab Remotely in a Server
Step 1: Load Matlab
* Command: module load apps/MATLAB/R2020a

Step 2: Run Matlab without GUI and in the background
* Command: nohup matlab -r MatlabScriptName -nodisplay - nosplash -nojvm -nodesktop &


# Tutorial:
* [How to run Matlab on server, University of Calgary](https://people.ucalgary.ca/~yauf/How_to_run_Matlab_on_server.htm){:target="_blank"}
* [How do I run my program in the background (including the use of 'screen')?](https://statistics.berkeley.edu/computing/background-program){:target="_blank"}

# Tips
1. If you are using Windows OS, you can access to the remote server by Putty of MobaXterms (recommended)
1. Display information of your active processes.
* Command: ps -ef | grep loginname
Or
* Command: ps -ef | grep first_7_characters_of_your_loginname_if_it_is_longer_than_8_characters
1. Kill A Process
* Command: kill PID
1.  Graphic Notebook Editor
* Command: gedit file_name.extension
