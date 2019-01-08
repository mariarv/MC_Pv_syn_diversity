% function that computes the release prob-ty (p_v) and its error (err) for the MCell
% simultions
% input: "folder_path" contains the path to the foldres with Mcell results. 

 function [p_v, err]=pv_and_err(folder_path)

s=dir(folder_path);
num_fold=length(s); % number of subfolders
cd(folder_path)     % move to the folder

for i=3:num_fold
    temp=0;
    f=dir(s(i).name);
    for j=1:length(f)-2 % loop trough the subfolders
        temp=temp+double(f(j).bytes>0); % compute # of non-empty files in the currecnt subfolder 
    end
    p_v(i-2)=temp/(length(f)-2); %compute release prob-ty 
    err(i-2)=sqrt(p_v(i-2).*(1-p_v(i-2))/(length(f)-2)); %compute the error of the release prob. 
    
end

