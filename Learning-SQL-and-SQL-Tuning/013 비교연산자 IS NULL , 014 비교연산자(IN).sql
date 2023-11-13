013 �� ������ ���� 4(IS NULL)

NULL ���� ��ȸ�� �� ����ϴ� �����ڰ� is null �̴�.
null ���̶�, data�� ���� ���� Ȥ�� �� �� ���� ��(unkown-> oracle �޴��󿡼��� ǥ�� -> �ǹ̰� �� ��Ȯȭ��) �̶�� �ǹ�.


���� 40. �̸��� ���ް� Ŀ�̼��� ����ϼ��� (1).  Ŀ�̼��� null �� ������� �̸��� Ŀ�̼��� ����Ͻÿ�.(2)

(1) ������ : ����
select ename, sal, comm
	from emp;

��������� null �� ������ ������� Ŀ�̼��� ����(�����ʴ�) �����.

(2) �� ���� : ����
select ename, comm
	from emp
	where comm is null;
	

	

����, ������ is null �� �ƴ� where comm = null �̶�� �ϸ� ���� ������ ����.
�ֳ��ϸ� null��  �� �� ���� ���̹Ƿ�, �� �������� = �δ� ��ȸ�� �� ����.
null �� ��ȸ �Ϸ��� '��Ÿ �񱳿�����'�� is null �� ��� �Ѵ�.

*�ؼ��ϸ� �ᱹ comm is null �̳� comm = null �̳� �Ӹ������� ���� �ǹ̷� �����Ǿ �򰥷� �Ҽ� �ִ�!
*null �� �񱳿����ڿ� ��������! �׷��� '��Ÿ �񱳿�����' �� ����Ѵ�!





���� 41. Ŀ�̼��� 'null �� �ƴ�' ������� �̸��� Ŀ�̼��� ����Ͻÿ�.

�� ���� 
select ename, comm
	from emp
	where comm is not null;
	



���� 42. mgr(�������� �����ȣ) �� null �� ����� �̸��� ������ ����Ͻÿ�

�� ����
select ename
	from emp
	where mgr is null;
	




���� 43. �����ȣ, �̸�, ������ ��ȣ�� ����Ͻÿ�. 

select empno, ename, mgr
    from emp;

����� ����..
����(PRESIDENT) �� ������ ��ȣ(mgr)�� ����. (�� å���� �ϱ�)




014 �� ������ ���� 5(IN)

where ���� �˻� ���ǿ��� �������� ���� ���Ҷ��� in �� ����ؾ� �մϴ�.
i.e) �����ȣ�� 7788, 7902 �� ������� �����ȣ�� �̸��� ��ȸ�Ͻÿ�.

select empno, ename
	from emp
	where empno in (7788, 7902)
	


= (equal) �����ڴ� �ϳ��� ���� ���� �� �ִ�. �������� ���� ���� ���� in �� ����ؾ� �մϴ�.




���� 44. ������ SALESMAN, ANALYST �� ������� �̸��� ������ ����Ͻÿ�.

�� ���� : ����
select ename, job
	from emp
	where job in ('SALESMAN' , 'ANALYST');
	
	
	
�������� ���ϴ� ���̴ϱ� 'in'�� ��� �ϰ�, ��ȣ �� ���� ��� �Ѵ�!
ename �� �������ε�, job �� �Ķ����� ����? -> job �� ����Ŭ�� ��ɾ��� �ϳ����� �׷�.
���� ȸ�翡���� job�̶�� �Ⱦ�.

���� 45. ������ SALESMAN, ANALYST �� �ƴ� ������� �̸��� ������ ����ϼ���.

�� ���� : ����

select ename, job
	from emp
	where job not in ('SALESMAN' , 'ANALYST');




select ename, job
	from emp
	where not job in ('SALESMAN' , 'ANALYST');
	
��� �ᵵ ���� �����µ�, �̰� ����Ŭ�� ������ �ڵ����� ���� ��. (��Ȯ�ϰ� ���� ���� �߿�!)


���� �� ������ ����� �����͸� ����� ���� �츮�� ���� �����͸� �����ؼ� �ǽ��� ����

i.e) 

��Ż� : sk, lg, kt

insert into emp12
values('��¼�',33,'��','��������а�','skt','nostelgia18@gmail.com','����� ������ �ֹ���' );

�� �ؼ� ī�信 ��� �ޱ� (�Ϸ�)


<���ɽð� ����! >
���� 46. ������ SALESMAN �� �ƴ� ������� �̸��� ���ް� ������ ����Ͻÿ�.

�� ���� 
select ename, job, sal
	from emp
	where job != 'SALESMAN';





���� 47. ���� ����� �ٽ� ����ϴµ� ������ ���� ������� ����Ͻÿ�.

�� ���� : ����

select ename, sal, job
    from emp
    where job != 'SALESMAN'
    order by sal desc;




������ ���� emp12 ���̺��� ���� scott ���� â���� emp�� dept ���̺��� �����ϱ�!
ī�� �Խñ� 2�� ���� �� ����Ŭ scott â�� �ٿ� �ֱ�


���� 48. �츮�� ���̺��� �̸��� ���̸� ����ϴµ� ���̰� ���� �л����� ����Ͻÿ�.

�� ���� : ����
select ename, age
	from emp12
	order by age desc;



	
���� 49. �̸��� ���̿� �ּҸ� ����ϴµ�, 30�� �̻��� �л��鸸 ����Ͻÿ�.

�� ���� : ����
select ename, age
	from emp12
	where age >=30;
	

	
	
���� 50. ������ '�达' �� �л����� �̸��� ��Ż縦 ����Ͻÿ�.

�� ���� : ����
select ename, telecom
	from emp12
	where ename like '��%';
	




���� 51. ������ ��踦 �����ϰ� �ִ� �л����� �̸���  ������ ����Ͻÿ�.


����
select ename, major
	from emp12
	where major like '%���%';
	


like �����ڸ� ����� �� Ư�� �ܾ �����ϰ� �ִ� �����͸� �˻��Ϸ��� '%�ܾ�%' (���ʿ� ���ϵ�ī��) ��� �ϸ� �˴ϴ�.

���� 52. �츮�ݿ� gmail ����ϴ� �л����� �̸��� ������ ����Ͻÿ�.

�� ���� (�ݸ� ����)
select ename, email
	from emp12
	where email like '%@gmail%';
	
	? @�� �Ƚ� �Ǳ���.
    
select ename, email
    from emp12
    where email like '%gmail%';



���� 53. �츮�ݿ� ���̰� 27���� 34������ �л����� �̸��� ���̸� ����Ͻÿ�.

�� ���� : ����
select ename, age
	from emp12
	where age between 27 and 34;
	
	

	
���� 54. �츮�ݿ��� ���̰� 27���� 34 ���̰� �ƴ� �л����� �̸��� ���̸� ����Ͻÿ�.

�� ���� : 
select ename, age
	from emp12
	where age not between 27 and 34;
	

	

���� 55. �ּҰ� ��⵵�� �л����� �̸��� ���̿� �ּҸ� ����Ͻÿ�.

�� ���� :

select ename, age, address
	from emp12
	where address like '%��⵵%';
	




���� 56. ��Ż簡 sk, lg �� �л����� �̸��� ��Ż縦 ����Ͻÿ�.

�� ���� : ����

select ename, telecom
	from emp12
	where telecom in ('sk','lg');
	




�ٵ� �츮�� ������ ���̺��� ���������� ���� Sk, skt � �־ �ǹ����� �ùٸ��� § �ڵ��� �ƴ� ��������!




���� 57. ���￡�� ��� �л����� �̸��� ���̿� ������ ����ϴµ� ���̰� �����л����� ����Ͻÿ�.


�� ���� : ����
select ename, age, major
	from emp12
	where address like '%����%'
	order by age desc;
	

	

���� 58. �̸����� gmail�� �ƴ� �л����� �̸��� �̸����� ����Ͻÿ�.

�� ���� : ����

select ename, email
	from emp12
	where email not like '%gmail%';
	



���� 59. �Ʒ��� ���� ����� ��µǵ��� �Ͻÿ�.

��** �л��� ���̴� 44�� �Դϴ�. <-git hub ���ε� ���̶� ��ȣȭ��. (������ �� ������ �̸�)
��** �л��� ���̴� 36�� �Դϴ�.
          .
          .
          .
          .
          
�� ���� : ���� 

select ename || ' �л��� ���̴�' ||age|| '�� �Դϴ�.'
	from emp12
	order by age desc;
	


���Ῥ���� �ڵ��� �ǿܷ� ��ƴ�. ��ﶧ�� ���ٰ� �����ߴµ� �������� ���ͼ� �����Ϸ��� �ٷ� ������ ���� �ʾƼ� ��Ʈ�� ã�� �ô�. 
(ã�� ���� �����ɷȴ�..) -> ���� �������� ���!