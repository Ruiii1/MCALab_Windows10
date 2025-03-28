%  WavePath -- initialize path to include WaveLab 
%

	fprintf('Welcome to WaveLab v 850 \n');
	disp('Setting Global Variables');
%
	global WAVELABPATH
	global PATHNAMESEPARATOR
	global PREFERIMAGEGRAPHICS
	global MATLABPATHSEPARATOR
	global WLVERBOSE
	
	WLVERBOSE = 'Yes';
	PREFERIMAGEGRAPHICS = 1;
%
	Friend = computer;
	if strcmp(Friend,'MAC2'),
	  PATHNAMESEPARATOR = ':';
	  WAVELABPATH = ['Macintosh HD:Build 850:Wavelab$VERSION$', PATHNAMESEPARATOR];
	  MATLABPATHSEPARATOR = ';';
      WAVELABPATH='~/matlab/Wavelab850/';%strcat(matlabroot,'/toolbox/Wavelab850/')
	elseif isunix,
	  PATHNAMESEPARATOR = '/';
	  WAVELABPATH = [pwd, PATHNAMESEPARATOR];
	  MATLABPATHSEPARATOR = ':';
      WAVELABPATH='~/matlab/Wavelab850/';%strcat(matlabroot,'/toolbox/Wavelab850/')
	elseif strcmp(Friend(1:2),'PC');
	  PATHNAMESEPARATOR = '\';	  
	  WAVELABPATH = [cd PATHNAMESEPARATOR];  
      MATLABPATHSEPARATOR = ';';
      WAVELABPATH=strcat(matlabroot,'\toolbox_WaveLab\');
	else
		disp('I don*t recognize this computer; ')
		disp('Pathnames not set; solution: edit WavePath.m')
    end
    

UserWavelabPath='';
while (exist(WAVELABPATH)~=7)
    WAVELABPATH=input(sprintf('Directory %s does not exist.\nEnter the correct path (type 0 to exit): ',WAVELABPATH),'s')
    if WAVELABPATH=='0'
        fprintf('\nError occurs and WaveLab has not been set up.\n')
        fprintf('Solution: Identify the correct path for WaveLab Directory in toolbox\n\n')
        clear all;
        return;
    end
    if (WAVELABPATH(end))~=PATHNAMESEPARATOR
          WAVELABPATH=strcat(WAVELABPATH, PATHNAMESEPARATOR);
    end
end

    %
	global MATLABVERSION
	V = version;
	MATLABVERSION = str2num(V(1:3));

        if MATLABVERSION < 6,
          disp('Warning: This version is only supported on Matlab 6.x and 7.x');
        end
%
        % Basic Tools
	p = path;
	pref = [MATLABPATHSEPARATOR WAVELABPATH];
	post = PATHNAMESEPARATOR;
	p = [p pref];

	p = [p pref 'Biorthogonal'	post];
	p = [p pref 'Continuous'        post];
	p = [p pref 'Datasets'		post];
	p = [p pref 'DeNoising'		post];
	p = [p pref 'Documentation'	post];
	p = [p pref 'FastAlgorithms'	post];
	p = [p pref 'Fractals'	        post];
	p = [p pref 'Interpolating'	post];
	p = [p pref 'MEXSource'		post];
	p = [p pref 'Median'		post];
	p = [p pref 'Median' PATHNAMESEPARATOR 'HigherDegree' post];
	p = [p pref 'Meyer'		post];
	p = [p pref 'Orthogonal'	post];
	p = [p pref 'Packets' PATHNAMESEPARATOR 'One-D' post];
	p = [p pref 'Packets' PATHNAMESEPARATOR 'Two-D' post];
	p = [p pref 'Papers'		post];
	p = [p pref 'Pursuit'		post];
	p = [p pref 'Invariant'	        post];
	p = [p pref 'Utilities'		post];
	p = [p pref 'TimeFrequency'	post];
	p = [p pref 'Workouts'		post];

	% Papers
	pref = [MATLABPATHSEPARATOR WAVELABPATH];
	pref = [pref 'Papers'	post];
	p = [p pref 'Adapt'			post];
	p = [p pref 'Asymp'			post];
	p = [p pref 'Blocky'			post];
	p = [p pref 'Correl'			post];
	p = [p pref 'Ideal'			post];
	p = [p pref 'MinEntSeg'			post];
	p = [p pref 'MIPT'			post];
	p = [p pref 'RiskAnalysis'		post];
	p = [p pref 'ShortCourse'		post];
	p = [p pref 'SpinCycle'			post];
	p = [p pref 'Tour'			post];
	p = [p pref 'VillardDeLans'		post];
	
	pref = [MATLABPATHSEPARATOR WAVELABPATH]; 
	pref = [pref 'Workouts'		post];
	p = [p pref 'BestOrthoBasis'	post];
	p = [p pref 'MatchingPursuit'	post];
	p = [p pref 'Toons'		post];
	p = [p pref 'MultiFractal'		post];
	
	% Browsers
	pref = [MATLABPATHSEPARATOR WAVELABPATH]; 
	pref = [pref 'Browsers' post];
	p = [p pref 'One-D' 	post];
	p = [p pref 'WaveTour' 	post];	
	
	pref = [MATLABPATHSEPARATOR WAVELABPATH];
	
	% Book(s)
	pref = [MATLABPATHSEPARATOR WAVELABPATH]; 
	pref = [pref 'Books' PATHNAMESEPARATOR 'WaveTour' post];
	p = [p pref 'WTCh02' 	post];
	p = [p pref 'WTCh04' 	post];
	p = [p pref 'WTCh05' 	post];
	p = [p pref 'WTCh06' 	post];
	p = [p pref 'WTCh07' 	post];
	p = [p pref 'WTCh08' 	post];
	p = [p pref 'WTCh09' 	post];
	p = [p pref 'WTCh10' 	post];
	
	path(p);
	disp('Pathnames Successfully Set');
	clear p pref post

	%
	fprintf('global WAVELABPATH = "%s"\n',              WAVELABPATH)
	fprintf('global PATHNAMESEPARATOR = "%s"; ',  PATHNAMESEPARATOR)
	fprintf('global MATLABVERSION = %g\n',            MATLABVERSION)
	fprintf('global PREFERIMAGEGRAPHICS = %g\n',PREFERIMAGEGRAPHICS)
	fprintf('WaveLab v 802 Setup Complete\n\n')
	fprintf('Available Demos - Figures from the following papers:\n')
	fprintf('  AdaptDemo  - ``Adapting to Unknown Smoothness via Wavelet Shrinkage''''\n')
	fprintf('  AsympDemo  - ``Wavelet Shrinkage: Asymptopia?''''\n')
	fprintf('  BlockyDemo - ``Smooth Wavelet Decompositions with Blocky Coefficient Kernels''''\n')
	fprintf('  CorrelDemo - ``Wavelet Threshold Estimators for Data with Correlated Noise''''\n')
	fprintf('  IdealDemo  - ``Ideal Spatial Adaptation via Wavelet Shrinkage''''\n')
	fprintf('  MESDemo    - ``Minimum Entropy Segmentation''''\n')
	fprintf('  MIPTDemo  - ``Nonlinear Wavelet Transforms based on Median-Interpolaton''''\n')
	fprintf('  RiskDemo  - ``Exact Risk Analysis of Wavelet Regression''''\n')
	fprintf('  SCDemo     - ``Nonlinear Wavelet Methods for Recovery of Signals, Densities\n')
	fprintf('                  and Spectra from Indirect and Noisy Data''''\n')
	fprintf('  CSpinDemo   - ``Translation-Invariant De-Noising''''\n')
	fprintf('  TourDemo   - ``Wavelet Shrinkage and W.V.D. -- A Ten-Minute Tour''''\n')
	fprintf('  VdLDemo    - ``WaveLab and Reproducible Research''''\n\n')
	fprintf('Available Workouts:\n')
	fprintf('  BBWorkout  - Workouts for Best Basis\n')
	fprintf('  MPWorkout  - Workouts for Matching Pursuit\n')
	fprintf('  MultiFrac  - Workouts for Continuous Wavelet Transform\n')
	fprintf('  Toons      - The Cartoon Guide to Wavelets\n\n')
	fprintf('Available Book(s):\n')
	fprintf('  WaveTour   - ``WaveLet Tour of Signal Processing''''\n\n')
      
%
% the next statement leaves items in global workspace
%  but hides them from local workspace
%
	clear WAVELABPATH MATLABVERSION PATHNAMESEPARATOR
	clear Friend PREFERIMAGEGRAPHICS MATLABPATHSEPARATOR
 
 
%
%  Part of Wavelab Version 850
%  Built Tue Jan  3 13:20:38 EST 2006
%  This is Copyrighted Material
%  For Copying permissions see COPYING.m
%  Comments? e-mail wavelab@stat.stanford.edu 
