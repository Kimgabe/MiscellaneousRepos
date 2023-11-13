015 �� ������ ����(AND, OR, NOT)


�������� ������ 3������ ����.
1) ��� ������ -> *, /, +, - (��Ģ����) 

2) �� ������ -> >, <, >=, <=, =, !=, <>, ^= 
��Ÿ �� ������ -> between and , like, is null, in

3) �� ������ -> and , or, not

e.g) ������ SALESMAN �̰� ������ 1200 �̻��� ������� �̸��� ���ް� ������ ����Ͻÿ�.

 ���� 

select ename, sal, job
    from emp
    where job = 'SALESMAN' and sal>=1200;



'and' �� ���� ������ ��� true �̱� ������ ���� ������ ��. 
-> true and true = true



'and' �翷�� ������ �ϳ��� false �̸� ������ �ϳ��� true ���� false �� �ȴ�.

false and true = false ���� ����� ����� �ȵ�.

What if, �ι�° ���ÿ��� and�� �ƴ� or ���?

false or true = true �̱⿡ ����� ��µ�. (������� ����)

select ename, sal, job
    from emp
    where job = 'SALESMAN' or sal>=1200;


SALESMAN �� �ش���� �ʾƵ� sal �� 1200 �̻��� ���ǵ��� ��� ���� ��!

�׷��Ƿ� 'or' ��ɾ ������ �ſ� ���� �ؾ� ��! ���� �ϳ��� false ���� ���� ������ ������!



���� 60. ������ SALESMAN �̰ų� ANALYST ��  ������� �̸��� ���ް� ������ ����Ͻÿ�.

�� ���� 
select ename, sal, job
    from emp
    where job = 'SALESMAN' or 'ANALYST'; 

�̶�� �ߴµ� ����!

select ename, sal, job
    from emp
    where job = 'SALESMAN' or job = 'ANALYST';
    ��� �ؾ� ����.
    where ���� ������ ������ ���� �ɷ��̶� �ϴ���, ����2���ʹ� �˻��� ������ �ִ�
    �÷����� �������� �Ѵ�!


Ȥ�� 
select ename, sal, job
	from emp
	where job in 'SALESMAN' or job = 'ANALYST';
	


���� 61. ������ �达, �̾��� �ƴ� �л� ���� �̸��� ����Ͻÿ�.

��ƴ�!!!

select ename
    from emp12
    where ename not like '%��%' and ename not like '%��%';





���� ���ִ� �Ŵϱ� ��ɾ� �ڿ� (and, or ) �ι�° ���ǿ� �Ǵٽ�  ��ɾ �Է����ִ°� ����Ʈ!

 
���� 62. �̸����� gmail �� naver �� �ƴ� �л����� �̸��� �̸����� ����Ͻÿ�.

�� ���� : ����

select ename, email
	from emp12
	where email not like '%gmail%' and email not like '%naver%';
	


	
	


PART 2���ʱޡ� SQL ���� ������


016 ��ҹ��� ��ȯ �Լ� ����(UPPER, LOWER, INITCAP)

�Լ� (function) �̶�, � Ư�� ����� ������ ���� �ڵ��� ����.

Ư�� �Է°��� '�Լ�'�� ������, � '��°�' �� ������. (���𰡰� �׻� ����! �ȳ����� �ʾ�!)

�Լ��� ����ϴ� ����?
�Լ��� �̿��ϸ� �� �� ������ ������ �˻��� �� �� �ֱ� ����.

e.g) ��ȭ �ܿ� �ձ����� elsa �� ���� ���ñ� anna �� ���� ���ñ�? ���� ���� �� �� ����.

e.g) �츮�� �л����� ���� ���� ���� ��Ż簡 ����ϱ�?

�Լ��� ������ 2����

1) ������ �Լ� : �ϳ��� ���� �Է¹޾� �ϳ��� ���� ��ȯ�ϴ� �Լ�
- ���� : upper, lower, initcap // �׿� SUBSTR, LENGTH, CONCAT, INSTR, TRIM, LAPD, RPAD ���

upper = �빮�ڷ� ����ϴ� �Լ�
lower = �ҹ��ڷ� ����ϴ� �Լ�
initcap = 'ù���ڸ� �빮��' �������� �� �ҹ��ڷ� ����ϴ� �Լ�

���� ��� ������
- ���� : 
- ��¥ :
- ��ȯ :
- �Ϲ� :

2) ������ �Լ� : �������� ���� �Է� �޾� �ϳ��� ���� ��ȯ�ϴ� �Լ�.
- max
- min
- avg
- sum
- count
- var
- stddev

������ �Լ� �� ���� �Լ�

e.g)

select upper(ename), lower(ename),initcap(ename)
    from emp;

�ؼ�: emp���̺��� �̸��� 3�� ����ϴµ� ù��°�� �빮�ڷ� ����ϰ�, �ι�°�� �ҹ��ڷ� �̸��� ����ϰ�, 
    ����°�� ù���ڸ� �빮�� �������� �ҹ��ڷ� �Ͽ� ����϶�!

�� �Լ����� Ư�� ������ 'ã�� ��'�� �ƴ϶�, �����͸� ���� '���ϴ� �������� ����' ���� �ִ� �Լ�!
���� �����Ͱ� ��/�ҹ��ڰ� ���� �־ ���� ���ϴ� ������� ������ ���� �ִ� ��. 


���� 63. �츮�� ���̺��� ��Ż簡 sk �� ���õ� ��Ż��̸� �� �л��� �̸��� ��Ż縦 ����Ͻÿ�.
��Ȯ�ϰ� �����Ͱ� ��µǰ� �� SQL �� �ۼ��Ͻÿ�! (���� ��Ǯ����)


���� 
select ename, upper(telecom)
	form emp12
	where upper(telecom) like '%SK%';
	
	


where upper(telecom) -> ��κ��� �ȶ��ϰ� SQL�� �� ���� ��.
telecom �����͸� ���� �빮�ڷ� �ٲٶ�� ��ɾ�
�� �� like �� ���ϰ�(�����͸� �빮�ڷ� ���� �ٲ����ϱ�) �빮�ڸ� �Է��ؼ� �˻��϶�� ��� 

select �����϶� , ename �̸���, upper(telecom) �빮�ڷ� �� ��Ż縦
from emp12 -> emp 12 ��� ���̺���
where ������ ���� , upper(telecom) �빮�ڷ� ��ȯ�� ��Ż� �ڷ��̰�, like '%SK%' -> SK�� ǥ�� �Ǵ� ��� �ڷ���� ����϶�.

lower ������ �����ؼ� 

select ename, lower(telecom) as telecom
    from emp12
    where lower(telecom) like '%sk%';
    
�� Ǯ ���� ����!

