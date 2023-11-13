    005 �ߺ��� �����͸� �����ؼ� ����ϱ�(DISTINCT)
    
    distinct Ű���带 �÷��� �տ� �ۼ��ϰ� �����ϸ� �ߺ��� �����͸� �����ϰ� 
    ����� �� �ִ�.
    e.g) 
    
    select job
        from emp; 
        
    ���� �ߺ��Ǵ� ������(=�ߺ��Ǵ� ����) �� �����ϰ� ����ϰ� �ʹٸ�,
    
    select distinct job
        from emp;
    
    
    
    ���� 12. �μ���ȣ�� ����ϴµ� �ߺ��� �����ؼ� ����Ͻÿ�.
    
    �� ���� : 
    select distinct deptno
        from emp;
        
        
    distinct �ڿ� �÷��� ����, �� �ڿ� �ٸ� �÷����� ���� �� ���� �и����� ����. 
    e.g) 
    select distinct ename ,sal
            from emp;
            
    ��� �ߴٸ� �̹� ename ���� �ߺ��� �����͸� �����Ͽ��� ������, �����Ͱ� �ɷ���
    �� ���¿��� sal�� �ߺ��Ǵ� ���� �Ÿ��� ���� �ƴ�, �ɷ��� ename �� �������� sal
    �� ����ϴ� ��.
    
	006 �����͸� �����ؼ� ����ϱ�(ORDER BY)
	
	order by ���� �����͸� �����ϴ� ���̰�, ������ �Ǹ�����(=�ǹ�)�� ����մϴ�.
	order by �ڿ� ������ �÷��� , �� �ڿ� �����ϴ� ���(asc/desc) ������ �Է�
	
	i.e) 
	select ename, sal
		from emp;
		order by sal asc;
		
	
	asc = �ø�����-���� ���� ���� ����
	desc = ��������-���� ���� ���� ����
	
	���� 13. �̸��� ������ ����ϴµ�, ������ ���� ������� ����Ͻÿ�.
	
	�� ���� : (����)
	selcet ename, sal
		from emp
		order by sal desc;
		
	
	
	���� 14. �̸��� �Ի����� ����ϴµ�, �ֱٿ� �Ի��� ������� ����Ͻÿ�.
	
	�� ���� : (����)
	select ename, hiredate
		from emp
		order by hiredate desc;
    
    desc �� ���� �ͺ��� ��� -> ��¥�����Ϳ����� ���ŷ� ������ ū��!
		
	
	
	���ɽð� ����
	�̸��� ���ް� �μ���ȣ�� ����ϴµ� �μ���ȣ�� 10��, 20��, 30�� ������ ��µǰ� �ϰ�, �÷����� �ѱ۷� �̸�, ����, �μ���ȣ�� ��µǰ� �Ͻÿ�.
	
	
	�� ���� (����)
	select ename as �̸�, sal as ����, deptno as �μ���ȣ
		from emp
		order by deptno asc;
	
    
    order by ���� �÷��� ���� �� �ۼ��� �� ����.
    How? 
    select ename, deptno, sal
        from emp
        order by deptno asc, sal desc;
    -> �μ� ��ȣ asc ���ĵ� ���� ��������,
    �� �ȿ��� sal�� desc �ϰ� ���ĵǾ ����.
    
    ������ �÷��� �����Ҷ��� �޸� (,) �� ���־�� �Ѵ�!
    and ��� ������ ���� �ִµ� ���� �ƴ�!
    
    
    
    �������� �÷����� �ʹ� ��ų�, ������ ��
    
    select ename, deptno, sal
        from emp
        order by 2 asc, 3 desc;
    
    �÷� ������ �´� ��ȣ�� ��ü�Ͽ� �Է��� ��.
    
    
    
    
    ���� 15. �̸��� ������ �Ի����� ����ϴµ�, ������ ABCD ������ �����ؼ� ����ϰ� �׷��� ����� ���� �������� �Ի����� ���� �Ի��� ������� ��µǰ� �Ͻÿ�.
    
    �� ���� (����)
    select ename, job, hiredate
        from emp
        order by job asc, hiredate asc;
	
	
