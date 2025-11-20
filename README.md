**The compilation of all libraries has been completed, so only the corresponding compiler needs to be installed and configured in MATLAB.**

①Install the `tdm64-gcc` compiler

②Setting variables in MATLAB

```matlab
setenv('MW_MINGW64_LOC','D:\TDM-GCC-64');
```

:pushpin: To avoid setting the environment each time, you can directly add environment variables in the system，Variable name: `MW_MINGW64_LOC`, path: `D:\TDM-GCC-64`, or execute the above command via `startup.m` when MATLAB starts.

③Install the corresponding compiler in MATLAB using  command: `mex -setup -v`. During the installation process, it will search for existing compilers, allowing you to check if they are the compilers mentioned above.

④Add the corresponding paths of all potentially used software packages in this file to the MATLAB path.

```matlab
path(path,'.\toolbox_MCALab');
path(path,'.\toolbox_MCALab\MCALab110');
path(path,'.\toolbox_MCALab\MCALab110\One-D');
path(path,'.\toolbox_MCALab\MCALab110\One-D\Datasets');
path(path,'.\toolbox_MCALab\MCALab110\One-D\Decomposition');
path(path,'.\toolbox_MCALab\MCALab110\One-D\DemoGUI');
path(path,'.\toolbox_MCALab\MCALab110\One-D\Dictionaries');
path(path,'.\toolbox_MCALab\MCALab110\One-D\Scripts');
path(path,'.\toolbox_MCALab\MCALab110\Two-D');
path(path,'.\toolbox_MCALab\MCALab110\Two-D\Datasets');
path(path,'.\toolbox_MCALab\MCALab110\Two-D\Decomposition');
path(path,'.\toolbox_MCALab\MCALab110\Two-D\DemoGUI');
path(path,'.\toolbox_MCALab\MCALab110\Two-D\Dictionaries');
path(path,'.\toolbox_MCALab\MCALab110\Two-D\Scripts');
path(path,'.\toolbox_MCALab\Utils');
path(path,'.\toolbox_WaveLab');
path(path,'.\toolbox_WaveLab\Biorthogonal');
path(path,'.\toolbox_WaveLab\Browsers');
path(path,'.\toolbox_WaveLab\Browsers\One-D');
path(path,'.\toolbox_WaveLab\Browsers\WaveTour');
path(path,'.\toolbox_WaveLab\Continuous');
path(path,'.\toolbox_WaveLab\Datasets');
path(path,'.\toolbox_WaveLab\DeNoising');
path(path,'.\toolbox_WaveLab\Documentation');
path(path,'.\toolbox_WaveLab\FastAlgorithms');
path(path,'.\toolbox_WaveLab\Fractals');
path(path,'.\toolbox_WaveLab\Interpolating');
path(path,'.\toolbox_WaveLab\Invariant');
path(path,'.\toolbox_WaveLab\MEXSource');
path(path,'.\toolbox_WaveLab\Median');
path(path,'.\toolbox_WaveLab\Median\HigherDegree');
path(path,'.\toolbox_WaveLab\Meyer');
path(path,'.\toolbox_WaveLab\Orthogonal');
path(path,'.\toolbox_WaveLab\Packets');
path(path,'.\toolbox_WaveLab\Packets\One-D');
path(path,'.\toolbox_WaveLab\Packets\Two-D');
path(path,'.\toolbox_WaveLab\Packets\utility');
path(path,'.\toolbox_WaveLab\Pursuit');
path(path,'.\toolbox_WaveLab\TimeFrequency');
path(path,'.\toolbox_WaveLab\Utilities');
path(path,'.\toolbox_WaveLab\Workouts');
path(path,'.\toolbox_WaveLab\Workouts\BestOrthoBasis');
path(path,'.\toolbox_WaveLab\Workouts\MatchingPursuit');
path(path,'.\toolbox_WaveLab\Workouts\MultiFractal');
path(path,'.\toolbox_WaveLab\Workouts\Toons');
path(path,'.\toolbox_CurveLab\fdct_wrapping_matlab');
path(path,'.\toolbox_CurveLab\fdct_wrapping_cpp\mex');
path(path,'.\toolbox_CurveLab\fdct_usfft_matlab');
path(path,'.\toolbox_CurveLab\fdct_usfft_cpp\mex');
path(path,'.\rwt\bin');
```

:pushpin: Include but not limited to existing paths, relevant paths can be added based on error prompts.

At this point, all work has been completed, and MCALab can be used in Windows 10.

:pushpin: Some functions in this version of MCALab use the latest version, so they may differ from the code in the official [MCALab](https://fadili.users.greyc.fr/demos/WaveRestore/downloads/mcalab/Home.html) version.


