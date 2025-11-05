function [HallA, HallB, HallC] = hallSensorGenerator(theta_rad, pole_pairs)
	%conversion of mechanical angle to electrical angle in degrees
	theta_elec_deg = mod(theta_rad * 180 / pi * pole_pairs, 360);
	% Generate Hall signals based on electrical angle
	% Hall A: High from 0 to 180 degree
	if theta_elec_deg >= 0 && theta_elec_deg < 180
	    HallA = 1;
	else
	    HallA = 0;
	end
	
	% Hall B: High from 120 to 300 degree
	if theta_elec_deg >= 120 && theta_elec_deg < 300
	    HallB = 1;
	else
	    HallB = 0;
	end
	
	% Hall A: High from 240 to 360 or 0 to 60 degree
	if theta_elec_deg >= 240 || theta_elec_deg < 60
	    HallC = 1;
	else
	    HallC = 0;
	end
end

