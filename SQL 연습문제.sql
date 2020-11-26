(����1)
��������1. ����,������ ��Ż������ ����ϴµ� ������ SALESMAN�� ����� �����ϰ�
������ ��Ż������ 4000�̻��� ����� �͸� ����ϰ�, ������ ��Ż������ ���� ������
�����Ͻÿ�.

select job, sum(sal)
    from emp
    where job !='SALESMAN'
    having sum(sal) >=4000
    group by job
    order by sum(sal) desc;
    
(����2)    
��������2. �̸�, ����, ������ ����ϴµ� ������ abcd������ �����ϰ�, �� ���� �Ʒ�
������ ���� ������ ����Ͻÿ�.

select ename, job, sal
    from emp
    order by job asc, sal desc; <- order by �� �߰� ���� ������ �޸�(,) ��!

(����2 ����)
�������� 3. �̸�, �μ���ȣ, �Ի����� ����ϴµ� �μ���ȣ�� ascending �ϰ� ����ϰ�
�� ���ؾƷ� �Ի����� descending �ϰ� ����Ͻÿ�.

select ename, deptno, hiredate
    from emp
    order by deptno asc, hiredate desc;
    
(����3) - rollup | rollup(�������÷���) <-group by ���� ���δ�.
�������� 4. ����, ������ ��Ż������ ����ϴµ� �� �Ʒ��� ��ü ��Ż������ ������ �Ͻÿ�.

select job, sum(sal)
    from emp
    group by rollup(job);
    
rollup �Լ��� ������ ����� �� �Ʒ��� ����ϰ��� �Ҷ� ����Ѵ�.

(����3 ����) - rollup�� �������� �÷��� �����ϰ� ������ ! grouping sets �� ����Ѵ�
�������� 5. �������� 4�� ����� grouping sets �� ����ؼ� ����Ͻÿ�.

select job, sum(sal)
    from emp
    group by grouping sets (job, ());
    
grouping sets �Լ��� rollup ó�� �������� ����ϴ� �Լ��̴�.
group by + grouping sets (�÷���, () ) �� ���δ�.
set ���� ��ȣ���� �׷��ؼ� ������ �÷��� , ()�� ��ü�� �ǹ��Ѵ�.
�������� �÷��� ������ grouping sets ( (�÷���1) , (�÷���2) ) �� �Է��Ѵ�.

(����3 ����)
�������� 6.�Ʒ��� SQL ����� union all �� �����ؼ� ����Ͻÿ�.

select deptno, job, sum(sal)
    from emp
    group by grouping sets( ( deptno), (job) );
    
��

select deptno, to_number(null) as job, sum(sal)
    from emp
    group by deptno
union all
select to_number(null) as deptno, job, sum(sal)
    from emp
    group by job;
    
unioin all �Ҷ� ���ǻ���
1) �� �Ʒ� ������ �÷� ������ �����ؾ���
2) �� �Ʒ� ������ ������ Ÿ���� �����ؾ��� -> to_number  �� ������ ����
3) �� ��� ������ �÷� �̸��� (������)�����ؾ��� -> �׷��� order by �� ���� �����ϰ� ���ĵ�

(����3 ����) - union all �Լ� /  �÷��� �����ؼ� ����ϱ� / �÷� ���� �����ϱ� 
�������� 7. �Ʒ��� SQL�� union all�� �����Ͻÿ�.

select deptno, job, sum(sal)
    from emp
    group by grouping sets ((deptno),(job),()) ;
    
��

select deptno, to_char(null) as job, sum(sal)
    from emp
    group by deptno
union all
select to_number(null) as deptno, job, sum(sal)
    from emp
    group by job
union all
select to_number(null) as deptno ,to_char(null) as job, sum(sal)
    from emp
    order by job asc, deptno asc;
    
������ ���ļ����� ��Ƽ�������� �����ؼ� �����°Ŷ� ���ݾ� �ٸ� �� ����.

(����4) to_char (�÷�, '999,999')
�������� 8. �μ���ġ, �μ���ġ�� ��Ż������ ����ϴµ� �μ���ġ�� ��Ż���� ��½�
1000�������� �޸��� �ο��ؼ� ����Ͻÿ�.

select d.loc, to_char(sum(e.sal),'999,999') as "sum(sal)"
    from emp e, dept d
    where e.deptno = d.deptno
    group by d.loc;

(����5) - sum+decode
�������� 9. �������� 8�� ����ϴµ� ���� ���η� ��µǰ� �Ͻÿ�.

select sum(decode(d.loc,'NEW YORK',e.sal)) as "NEW YORK",
        sum(decode(d.loc,'DALLAS',e.sal)) as "DALLAS",
        sum(decode(d.loc,'CHICAGO',e.sal)) as "CHICAGO",
        sum(decode(d.loc,'BOSTON',e.sal)) as "BOSTON"
    from emp e, dept d
    where e.deptno = d.deptno;
    
(����6) - where ���� ��������
�������� 10. ALLEN���� �ʰ� �Ի��� ������� �̸�, �Ի����� ����ϴµ� �ֱٿ� �Ի���
������� ����Ͻÿ�.

select ename, hiredate
    from emp
    where hiredate < (select hiredate from emp
                        where ename='ALLEN')
    order by hiredate desc;
    
(����7) not in�� ����� ��������
�������� 11. �����ڰ� �ƴ� ������� �̸��� ����Ͻÿ�.
(�ڱ� �ؿ� ���Ӻ��ϰ� 1�� ���� ������� ����Ͻÿ�)
(=�ٸ� ����� mgr �� �ڽ��� deptno �� ���!)

select ename
    from emp
    where empno not in(select mgr from emp
                        where mgr is not null);
                        
Ȥ��

select ename
    from emp
    where empno not in (select nvl(mgr,0) from emp);
    
not in�� ����� ��������
not in �� ������������ ������ where �� ������ �Ǵ� �÷��� ���� ������ �ǹ�.
not it ���� ������������ null���� �ϳ��� ���ϵǸ� ���� ��µ��� �ʴ´�.
�̸� �����ϰ��� not null / nvl �Լ��� ����� null���� ������ ���� �����Ѵ�.

(����8) rank() over + partition by 
�������� 11. ����, �̸�, ������ ������ ����ϴµ� ������ �������� ���� ������
���� ������� ������ �ο��Ͻÿ�. 

select job, ename, sal,
    rank ()over (partition by job
                order by sal desc) as ����
    from emp;
    
������ �ű�� �Լ� : rank () over
���� �ű�� ���ֿ� ���� ���ϱ� by 'partition by order by'
    
(����8����) - from ���� ��������
�������� 12. �������� 11�� ����� �ٽ� ����ϴµ� ������ 1���� ����鸸 ����Ͻÿ�.;

select *
    from (select job, ename, sal,
            rank () over (partition by job order by sal desc) ����
            from emp)
    where ���� = 1;
    

(����9) - ����ɱ� (primary key)
�������� 13. �Ʒ��� ���̺��� �����ϰ� empno�� primary key ������ �Žÿ�!

���̺�� : emp460
�÷��� : empno <---primary key
        ename
        sal
        hiredate
        
��!

1. ���̺� ���� �� ������ �Ŵ� ���

create table emp460
    (empno  number(10),
    ename   varchar2(10),
    sal     number(10),
    hiredate date);
    
alter table emp460
    add constraint emp460_empno_pk primary key(empno);
    

2. ���̺� ����鼭 ���ÿ� ������ �Ŵ� ���;

create table emp460
    (empno number(10) constraint emp460_empno_pk primary key(empno),
    ename   varchar2(10),
    sal     number(10),
    hiredate date);
    
(����9����) - ����ɱ� unique ���� ver
�������� 14. �Ʒ��� �����͸� ��� ���̺��� emp461�� �����ϰ� �Ʒ��� �����͸� �Է��ϴµ�
ename �÷��� unique ������ �Žÿ�.

���̺�� : emp461
�Է��� ������ 
1111	scott	3000	81/11/17
2222	smith	4000	82/12/21
3333	allen	5000	83/05/02

1. ���̺� ����

create table emp461
    (empno  number(10),
    ename   varchar2(10),
    sal     number(10),
    hiredate date);
    
2. ���̺� ������ �Է�

insert into emp461 values (1111,'scott',3000,to_date('81/11/17','RR/MM/DD'));
insert into emp461 values (2222,'smith',5000,to_date('82/12/21','RR/MM/DD'));
insert into emp461 values (3333,'allen',5000,to_date('83/05/02','RR/MM/DD'));

3. �÷��� ���� �ɱ�;

alter table emp461
    add constraint emp461_ename_un unique(ename);
    

(����10) from ���� ��������
�������� 15. �̸�,����, �μ���ȣ, �ڱⰡ ���� '�μ���ȣ�� ��տ���'�� ����Ͻÿ�.;
�ܼ� ��� ������ �ƴ� '�μ���ȣ'�� ��� ����!;

select e.ename, e.sal, e.deptno, d.�μ���� as �μ����
    from emp e, (select deptno, avg(sal) �μ����
                    from emp
                    group by deptno) d
    where e.deptno = d.deptno;
    
*from ���� �������������� �μ���ȣ�� �� ������ ���� ��� ������ ����Ͽ� d ���̺��� ����.
������ emp �� �μ������ ����� �ӽ����̺��� 'JOIN' �� ��!

(����10����) with ���� Ȱ���� Ǯ��
�������� 16. �������� 15�� with���� ����� �����Ͻÿ�.

with deptno_avg as (select deptno, avg(sal) �μ����
                        from emp group by deptno)
select e.ename, e.sal, e.deptno, d.�μ����
    from emp e, deptno_avg d
    where e.deptno = d.deptno;
    
*from ���� ���������� with������ deptno_avg ��� ������ �ӽ� ���̺��� �������
�� ���̺�� emp ���̺��� 'JOIN' �� ��!


(����11) SQL �˰��� - mod ���
�������� 17. 1���� 10������ �����߿��� Ȧ���� ����Ͻÿ�.

with num_table as (select level as num1
                    from dual
                    connect by level <=10)
select num1
    from num_table
    where mod(num1,2) = 1;
    
1. 1~10�� �ִ� num_table �� �����.
2. 1���� ���� ���̺��� mod �� ����� �������ش�.
3. where ���� ������ �ο��� ���ϴ� ���� �̾��ش�.

*mod(�������� ��, ���� ��) 

(����12) SQL �˰��� 1��
�ؼ��� �ڿ���� (e) �̰� ������ 10�� �α� ���� ����Ͻÿ�.
= ln10�� ����϶�.

select ln(10) from dual;

(����13) SQL�˰��� 1��
�ڿ���� (e) �� 10���� ���Ͻÿ�.

select exp(10) from dual;

(����14) SQL �˰��� 1��
1���� 10������ ���� SQL�� �����Ͻÿ�.

select round(exp(sum(ln(level ) ) ) )
    from dual
    connect by level <=10;
    
    
