N=2^8;  %N为采样点数
s_p=0:255;%正弦波一个周期的采样点数
sin_data=sin(2*pi*s_p/N);  %200KHz  
sin_data1=sin(8*pi*s_p/N); %800KHz
fix_p_sin_data=fix(sin_data*127); 
fix_p_sin_data1=fix(sin_data1*127);
fix_p_sin_data2=fix((fix_p_sin_data1+fix_p_sin_data)/2);
for i=1:N
    if fix_p_sin_data(i)<0
        fix_p_sin_data(i)=N+fix_p_sin_data(i)
    else
        fix_p_sin_data(i)=fix_p_sin_data(i);
    end
end
for i=1:N
    if fix_p_sin_data2(i)<0
        fix_p_sin_data2(i)=N+fix_p_sin_data2(i)
    else
        fix_p_sin_data2(i)=fix_p_sin_data2(i);
    end
end%下面是mif文件固定格式，不可更改

fid=fopen('800+200KHz.mif','w+');
fprintf(fid,'WIDTH=8;\n');
fprintf(fid,'DEPTH=256;\n');
fprintf(fid,'ADDRESS_RADIX=UNS;\n');
fprintf(fid,'DATA_RADIX=UNS;\n');
fprintf(fid,'CONTENT BEGIN \n');
for i=1:N
fprintf(fid,'%d:%d; \n',i-1,fix_p_sin_data(i));
end
fprintf(fid,'END; \n');
fclose(fid);


