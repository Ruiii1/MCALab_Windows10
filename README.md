**The compilation of all libraries has been completed, so only the corresponding compiler needs to be installed and configured in MATLAB.**

①Install the `tdm64-gcc` compiler

②Setting variables in MATLAB

```matlab
setenv('MW_MINGW64_LOC','D:\TDM-GCC-64');
```

:pushpin: To avoid setting the environment each time, you can directly add environment variables in the system，Variable name: `MW_MINGW64_LOC`, path: `D:\TDM-GCC-64`, or execute the above command via `startup.m` when MATLAB starts.

③Install the corresponding compiler in MATLAB using  command: `mex -setup -v`. During the installation process, it will search for existing compilers, allowing you to check if they are the compilers mentioned above.

④Add the paths to all the packages that may be used in this file to the MATLAB path using the file `add_path.m`.

At this point, all work has been completed, and MCALab can be used in Windows 10.

:pushpin: Some functions in this version of MCALab use the latest version, so they may differ from the code in the official [MCALab](https://fadili.users.greyc.fr/demos/WaveRestore/downloads/mcalab/Home.html) version.



