function c=f2c1(A,tag_count,b)%AΪ��ǩ���飬tag_countΪ��ǩ��Ŀ��b�Ѿ�ʹ�õ�ʱ϶��
left_tag(1,tag_count)=0;%��ǩ��������
m=1;%��������ǩ��Ŀ
right_tag(1,tag_count)=0;%��ǩ��������
n=1;%��������ǩ��Ŀ
b=b+2;%һ�β�ѯ��һ����Ӧ
D_max=0;%�����ײλ
x=0;


if tag_count==1%�жϱ�ǩ�Ƿ�Ϊ1
    c=b;
    return;
end

for j=16:-1:1%��ǩIDΪ16λ
    sum=0;
    for k=1:tag_count%���б�ǩ��ӦΪ��� 
        x=bitget(A(k),j);
        sum=sum+x;
    end
    if sum==0%��λ����ײ����λΪ0
        ;     
    elseif sum==tag_count %��λ����ײ����λΪ1
        ;
    else%����ײ
        D_max=j;%�õ������ײλ
        break;
    end
end
for i=1:tag_count%�ѱ�ǩ�ֳ���������
    x=bitget(A(i),D_max);
    if x==1
        left_tag(m)=A(i);
        m=m+1;
    else
        right_tag(n)=A(i);
        n=n+1;
    end
end
if m==2|m==1%�����������һ����ǩ���ޱ�ǩ����Ӧ���
    b=b+2;
    c=b;
else
    b=f2c1(left_tag,m-1,b);%�����ǩ������2����ݹ����
end

if n==2|n==1%�����������һ����ǩ���ޱ�ǩ����Ӧ���
    b=b+2;
    c=b;   
else
    b=f2c1(right_tag,n-1,b);%�����ǩ������2����ݹ����
end
c=b;%���������ܵĴ���
return;
