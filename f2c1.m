function c=f2c1(A,tag_count,b)%A为标签数组，tag_count为标签数目，b已经使用的时隙数
left_tag(1,tag_count)=0;%标签的左子树
m=1;%左子树标签数目
right_tag(1,tag_count)=0;%标签的又子树
n=1;%右子树标签数目
b=b+2;%一次查询和一次响应
D_max=0;%最高碰撞位
x=0;


if tag_count==1%判断标签是否为1
    c=b;
    return;
end

for j=16:-1:1%标签ID为16位
    sum=0;
    for k=1:tag_count%所有标签对应为求和 
        x=bitget(A(k),j);
        sum=sum+x;
    end
    if sum==0%此位无碰撞，此位为0
        ;     
    elseif sum==tag_count %此位无碰撞，此位为1
        ;
    else%有碰撞
        D_max=j;%得到最高碰撞位
        break;
    end
end
for i=1:tag_count%把标签分成左、右子树
    x=bitget(A(i),D_max);
    if x==1
        left_tag(m)=A(i);
        m=m+1;
    else
        right_tag(n)=A(i);
        n=n+1;
    end
end
if m==2|m==1%如果左子树有一个标签或无标签则响应完毕
    b=b+2;
    c=b;
else
    b=f2c1(left_tag,m-1,b);%如果标签数大于2，则递归调用
end

if n==2|n==1%如果右子树有一个标签或无标签则响应完毕
    b=b+2;
    c=b;   
else
    b=f2c1(right_tag,n-1,b);%如果标签数大于2，则递归调用
end
c=b;%返回所用总的次数
return;
