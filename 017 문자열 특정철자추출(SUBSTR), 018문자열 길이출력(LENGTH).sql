017 ���ڿ��� Ư�� ö�� �����ϱ�(SUBSTR)

���� : 
substr(����� �÷�, ������� ������ ����, ��������� ��)

e.g) 
select ename, substr(ename, 1,1) <- ename�� ö�ڸ� ����ϴµ� ù��° ���ڱ������� �������� �ѱ��ڸ� ����϶�!
from emp12;


���ڷ� ���� ������ �ڸ��� ����
    ��     ��      ��
    1      2       3 
   -3     -2      -1 

�Ѵ� ����!

substr(ename, �������̵� �ڸ��� ��ġ, ���°���� ǥ���Ұ�����)

�̸��� 3���� ��.��.�� �̸� �� �� 1��° Ȥ�� -3, �� �� 2��°, Ȥ�� -2, �� �� 3��° �ڸ��� �ǹ�

substr(ename, 2,2) �� �̸� �����Ϳ��� 2��° ���ں��� 2���� �о�� ��� �ǹ�!
-> �� (2��° ����) ���� 2���� �� '�¼�'���� �а� �Ǵ� ��.

substr(ename, -3,2) �� �̸� ���Ϳ��� �ڿ��� 3��°�� ���� (��) ���� 2���ڸ� ��������ǹ� 
-> ��� �̶�� ����.


e.g)
select ename, substr(ename,1,1)
	from emp12;
	


e.g)
������ '��'���� �л����� �̸��� ����Ͻÿ�. like ���� �ʰ�, in �� substr ���� �Ἥ ��Ÿ���ÿ�.

�� ����
select ename, substr(ename,1,1)
    from emp12
    where substr(ename,1,1) in '��';

������ �ϳ����� ��� in ��� =�� �ᵵ �Ǳ� �ϴ�.


select ename, substr(ename,1,1) -> �̸��� �̸��� ù���� �����͸� �����ϰ�
    from emp12 
    where substr(ename,1,1) in '��'; -> where ���� ������ �����ϴ� ��! 
   � �����͸� ������ ������ ������ �ο��ϴ� ���̹Ƿ� substr �� ����. �׸��� ���߿� '��'��� ���ڸ� ���� ������   
    �� ��󳻴� ��

where ���� �˻������� ��� ���ϴ� �����͸� �� �� �ִ� ��.
select ���� �����͸� ������ ��. ���͸� ���� �ʾ�!





���� 64. ������ ��, ��, ������ �л����� �̸��� ���̸� ����ϴµ� like �� ���� ���� in �� substr �� �Ἥ ����Ͻÿ�.


�� ���� : ����

select ename, age
	from emp12
	where substr(ename,1,1) in ('��','��','��');
	



018 ���ڿ��� ���̸� ����ϱ�(LENGTH)

ö���� ���̸� ����ϴ� �Լ�
select ename, length(ename) 
	from emp;

-> emp���� ename��� �÷����� ��µǴ� ������ �� ���� ���̰� �������� ����϶�� ��





���� 65. �츮�� ���̺��� �̸��ϰ� �̸��� ö���� ���̸� ����ϴµ�, �̸��� ö���� ���̰� �� �ͺ��� ��µǵ��� �Ͻÿ�.

�� ���� : ����

select ename, email, length(email)
    from emp12
    order by length(email) desc;




���� �غ��� �;��� ��
Q. �̸��� ���ڼ����� �����ϰ�, �̸��� ������ ������ �����ϴ� ����?

select ename, email, length(email)
	from emp12
	order by length(email) desc, ename desc;
	


�ٸ� ���� ��ɾ���� and �� not ���� �ٿ��� ó���� 
order by length(email) desc and ename desc; �䷸�� �ߴµ� ����!

order by ���� ���������� �Է��Ҷ��� ��ġ�� ���� ���� �߰��Ҷ� �޸��� ���и� �ϸ� ��!
(���� �ǽ��ϸ� �غ� ���� �ִµ� ����� ���ߴ� ��. ���� ������ �߿�!) 


���� 66. EMP ���̺��� ename �� ����ϰ� �� ���� ename �� ù��° ö�ڸ� ����Ͻÿ�.

�� ���� : ����
select ename, substr(ename,1,1)
    from emp;



���� 67. ���� ����� �ٽ� ����ϴµ� �̸��� ù��° ö�ڷ� ��µǴ� �κ��� �ҹ��ڷ� ����Ͻÿ�.

�� ���� : ����

select ename, lower(substr(ename,1,1))
    from emp;

or

�������� �˷��ֽ� �ٸ� ��
select ename, substr(lower(ename),1,1)
    from emp;

�̷��� �ص� ��.


�����Ϸ��� ���� ��/�� ���� ������ �����ϰ� ���� ���� �� �տ� �;� �ϴ� ����! 


���� 68. (������ ������ ����) ��۷� �˻� ��������~!
�Ʒ��� ����� initcap ���� ����, upper, lower, substr, || (���Ῥ����) ����ؼ� ����Ͻÿ�!

select initcap(ename)
	from emp;

�����
King
Blake
Clark
Jones
Martin
Allen
Turner
James
Ward
Ford
Smith
Scott
Adams
Miller
	



�� ����

select substr(upper(ename),1,1)||substr(lower(ename),2,5) as "INITCAP(ENAME)"
    from emp; 

�̰͵� �±���.  �ٵ� ���ڼ��� ���� �� �˰� �־ ���߼� 5��� ī�����Ѱ�!

�ٸ� ��� �亯 ����!
select substr(upper(ename),1,1)||substr(lower(ename),2,length(ename)-1)
    from emp;

��� �ؼ� length �Լ��� ���鼭 �� ���ڸ��� ����ڰ� �ǵ� -1�� ���� ������! (�ȶ���!!!)

���� �Ϻ��� ���� �̰� ����!

select upper(substr(ename,1,1))||lower(substr(ename,2))
from emp;

-> �����ض� �빮�ڷ� �̸��� ù��° ���� �������� 1���� || (���Ῥ��) �ҹ��ڷ� �̸��� 2��° ���ں��� ����!
emp ���̺�� ����

substr �� ���� �����͸� �� �÷��� �����ϰ� �޸�/����/��ȣ(���� ���� �������� ����) �ϸ� �ش� ���ں��� ������ ������ ���� ���� �� ������ �Ǵ� ���̱���! 
�� substr(�÷�, ����,����) �̷� ������ �Է��� �ʿ� ������!


���빮�� ����� ����.
Q. 68���� ��� + job �� ����ϴµ� initcap ���� ����, upper, lower, substr, || (���Ῥ����) ����ؼ� ����Ͻÿ�!

select initcap(ename), initcap(job)
    from emp;

�����
King	President
Blake	Manager
Clark	Manager
Jones	Manager
Martin	Salesman
Allen	Salesman
Turner	Salesman
James	Clerk
Ward	Salesman
Ford	Analyst
Smith	Clerk
Scott	Analyst
Adams	Clerk
Miller	Clerk


�� ��� ó�� �����

select upper(substr(ename,1,1))||lower(substr(ename,2))as "INITCAP ENAME",
upper(substr(job,1,1))||lower(substr(job,2)) as "INITCAP JOB"
    from emp;


