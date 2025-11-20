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
E:\MCALab_Windows10\toolbox_MCALab
E:\MCALab_Windows10\toolbox_MCALab\MCALab110
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\One-D
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\One-D\Datasets
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\One-D\Decomposition
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\One-D\DemoGUI
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\One-D\Dictionaries
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\One-D\Scripts
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\Two-D
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\Two-D\Datasets
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\Two-D\Decomposition
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\Two-D\DemoGUI
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\Two-D\Dictionaries
E:\MCALab_Windows10\toolbox_MCALab\MCALab110\Two-D\Scripts
E:\MCALab_Windows10\toolbox_MCALab\Utils
E:\MCALab_Windows10\toolbox_WaveLab
E:\MCALab_Windows10\toolbox_WaveLab\Biorthogonal
E:\MCALab_Windows10\toolbox_WaveLab\Browsers
E:\MCALab_Windows10\toolbox_WaveLab\Browsers\One-D
E:\MCALab_Windows10\toolbox_WaveLab\Browsers\WaveTour
E:\MCALab_Windows10\toolbox_WaveLab\Continuous
E:\MCALab_Windows10\toolbox_WaveLab\Datasets
E:\MCALab_Windows10\toolbox_WaveLab\DeNoising
E:\MCALab_Windows10\toolbox_WaveLab\Documentation
E:\MCALab_Windows10\toolbox_WaveLab\FastAlgorithms
E:\MCALab_Windows10\toolbox_WaveLab\Fractals
E:\MCALab_Windows10\toolbox_WaveLab\Interpolating
E:\MCALab_Windows10\toolbox_WaveLab\Invariant
E:\MCALab_Windows10\toolbox_WaveLab\MEXSource
E:\MCALab_Windows10\toolbox_WaveLab\Median
E:\MCALab_Windows10\toolbox_WaveLab\Median\HigherDegree
E:\MCALab_Windows10\toolbox_WaveLab\Meyer
E:\MCALab_Windows10\toolbox_WaveLab\Orthogonal
E:\MCALab_Windows10\toolbox_WaveLab\Packets
E:\MCALab_Windows10\toolbox_WaveLab\Packets\One-D
E:\MCALab_Windows10\toolbox_WaveLab\Packets\Two-D
E:\MCALab_Windows10\toolbox_WaveLab\Packets\utility
E:\MCALab_Windows10\toolbox_WaveLab\Pursuit
E:\MCALab_Windows10\toolbox_WaveLab\TimeFrequency
E:\MCALab_Windows10\toolbox_WaveLab\Utilities
E:\MCALab_Windows10\toolbox_WaveLab\Workouts
E:\MCALab_Windows10\toolbox_WaveLab\Workouts\BestOrthoBasis
E:\MCALab_Windows10\toolbox_WaveLab\Workouts\MatchingPursuit
E:\MCALab_Windows10\toolbox_WaveLab\Workouts\MultiFractal
E:\MCALab_Windows10\toolbox_WaveLab\Workouts\Toons
E:\MCALab_Windows10\toolbox_CurveLab\fdct_wrapping_matlab
E:\MCALab_Windows10\toolbox_CurveLab\fdct_wrapping_cpp\mex
E:\MCALab_Windows10\toolbox_CurveLab\fdct_usfft_matlab
E:\MCALab_Windows10\toolbox_CurveLab\fdct_usfft_cpp\mex
E:\MCALab_Windows10\rwt\bin
```

:pushpin: Include but not limited to existing paths, relevant paths can be added based on error prompts.

At this point, all work has been completed, and MCALab can be used in Windows 10.

:pushpin: Some functions in this version of MCALab use the latest version, so they may differ from the code in the official [MCALab](https://fadili.users.greyc.fr/demos/WaveRestore/downloads/mcalab/Home.html) version.

