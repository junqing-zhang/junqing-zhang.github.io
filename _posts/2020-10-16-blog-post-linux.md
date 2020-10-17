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
```
module load apps/MATLAB/R2020a
```
Step 2: Run Matlab without GUI and in the background
```
nohup matlab -r MatlabScriptName -nodisplay - nosplash -nojvm -nodesktop &
```

Display information of your active processes.
```
ps -ef | grep loginname
```