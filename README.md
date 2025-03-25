**The compilation of all libraries has been completed, so only the corresponding compiler needs to be installed and configured in MATLAB.**

①Install the tdm-gcc compiler

②Setting variables in MATLAB

```matlab
setenv('MW_MINGW64_LOC','D:\TDM-GCC-64');
```

:pushpin:To avoid setting the environment each time, you can directly add environment variables in the system，Variable name: `MW_MINGW64_LOC`, path: `D:\TDM-GCC-64`, or execute the above command via `startup.m` when MATLAB starts.

③Install the corresponding compiler in MATLAB using `mex -setup -v`. During the installation process, it will search for existing compilers, allowing you to check if they are the compilers mentioned above.

④Add the corresponding paths of all potentially used software packages in this file to the MATLAB path.

```matlab
% rwt/bin
% toolbox_WaveLab
% toolbox_WaveLab/Browsers/One-D
% toolbox_WaveLab/Datasets
% toolbox_WaveLab/DeNoising
% toolbox_WaveLab/FastAlgorithms
% toolbox_WaveLab/Interpolating
% toolbox_WaveLab/Orthogonal
% toolbox_WaveLab/Packets
% toolbox_WaveLab/Packets2
% toolbox_WaveLab/Papers
% toolbox_WaveLab/Papers/Adapt
% toolbox_WaveLab/Papers/Blocky
% toolbox_WaveLab/Papers/Ideal
% toolbox_WaveLab/Papers/ShortCourse
% toolbox_WaveLab/Papers/Tour
% toolbox_WaveLab/Papers/VillardDeLans
% toolbox_WaveLab/Pursuit
% toolbox_WaveLab/Stationary
% toolbox_WaveLab/Symmetric
% toolbox_WaveLab/Utilities
% toolbox_WaveLab/Workouts
% toolbox_WaveLab/Workouts/BestOrthoBasis
% toolbox_WaveLab/Workouts/MatchingPursuit
% toolbox_WaveLab/Workouts/Toons
% toolbox_CurveLab/fdct_usfft_cpp/mex
% toolbox_CurveLab/fdct_usfft_matlab
% toolbox_CurveLab/fdct_wrapping_cpp/mex
% toolbox_CurveLab/fdct_wrapping_matlab
% toolbox_MCALab/MCALab110
% toolbox_MCALab/Utils
```

At this point, all work has been completed, and MCALab can be used in Windows 10.

:pushpin: Some functions in this version of MCALab use the latest version, so they may differ from the code in the official [MCALab](https://fadili.users.greyc.fr/demos/WaveRestore/downloads/mcalab/Home.html) version.
