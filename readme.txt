已经完成所有库的编译工作，因此只需要安装对应的编译器，并在matlab中完成配置即可

1.安装tdm-gcc编译器
2.在matlab中设置变量：
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    setenv('MW_MINGW64_LOC','D:\TDM-GCC-64');
注：如果不想每次都设置环境，可直接在系统中添加环境变量。变量名：MW_MINGW64_LOC，路径：D:\TDM-GCC-64。
或者在matlab开启时通过 startup.m 执行上述指令。

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
3.在matlab中通过 mex -setup -v 安装对应编译器。在安装过程中，会对现有编译器进行检索，可查询是否为上述编译器。

4.将该文件中所有可能使用到的软件包的对应路径添加到matlab路径中。

rwt/bin

toolbox_WaveLab
toolbox_WaveLab/Browsers/One-D
toolbox_WaveLab/Datasets
toolbox_WaveLab/DeNoising
toolbox_WaveLab/FastAlgorithms
toolbox_WaveLab/Interpolating
toolbox_WaveLab/Orthogonal
toolbox_WaveLab/Packets
toolbox_WaveLab/Packets2
toolbox_WaveLab/Papers
toolbox_WaveLab/Papers/Adapt
toolbox_WaveLab/Papers/Blocky
toolbox_WaveLab/Papers/Ideal
toolbox_WaveLab/Papers/ShortCourse
toolbox_WaveLab/Papers/Tour
toolbox_WaveLab/Papers/VillardDeLans
toolbox_WaveLab/Pursuit
toolbox_WaveLab/Stationary
toolbox_WaveLab/Symmetric
toolbox_WaveLab/Utilities
toolbox_WaveLab/Workouts
toolbox_WaveLab/Workouts/BestOrthoBasis
toolbox_WaveLab/Workouts/MatchingPursuit
toolbox_WaveLab/Workouts/Toons

toolbox_CurveLab/fdct_usfft_cpp/mex
toolbox_CurveLab/fdct_usfft_matlab
toolbox_CurveLab/fdct_wrapping_cpp/mex
toolbox_CurveLab/fdct_wrapping_matlab

toolbox_MCALab/MCALab110
toolbox_MCALab/Utils

注：包括但不限于上述路径，可根据函数缺失报错情况添加对应路径
