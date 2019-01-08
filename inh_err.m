% compute the inhibition (inh) and error (err)
% input: pv_c - release prob-ty in the control condition
%        pv_e - release prob-ty in aletered condition
%        er1 - errorof p_v in the in the control condition
%        er2 - errorof p_v in the in in aletered condition

function [inh, err]=inh_err(pv_c,pv_e,er1,er2)

inh=(1-(pv_e./pv_c))*100;

err=hib.*(sqrt((er1./pv_c).^2+(er2./pv_e).^2))*100;