%% 该文件用于统计下列程序是否可以执行

%+--- figfirefrommetadata2D.m         			% 不可以，超出数组界限 (通过修改computeL2norm函数解决，具体在EM_Inpaint.m文件的331行)  		
%+--- figInpaintbarbara.m 			 			% 可以
%+--- figInpaintcartoon.m                       % 无法运行，缺失函数fatfm2sym
%+--- figInpaintlena.m                          % 不可以，超出数组界限 (通过修改computeL2norm函数解决，具体在EM_Inpaint.m文件的331行)
%+--- figInpaintlinesgaussians.m 				% 不可以，超出数组界限 (通过修改computeL2norm函数解决，具体在EM_Inpaint.m文件的331行)
%+--- figInpainttexturegaussians.m 				% 可以
%+--- figMCAbarbara.m 							% 可以
%+--- figMCAboytexture.m 						% 可以
%+--- figMCAdometextures.m 						% 可以
%+--- figMCAlinesgaussians.m 					% 可以
%+--- figMCArisers.m 							% 可以
%+--- figMCAtexturegaussians.m 					% 可以
%+--- figZoomlena.m 							% 缺数据集
%+--- runAll2DScripts.m 						% 可以