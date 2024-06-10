select * from task where taskstatusid in 
(select taskstatusid from taskstatus where isresolved=1);

select * from task join taskstatus on task.taskstatusid = taskstatus.taskstatusid where 
taskstatus.isresolved=1;

select * from task;
select * from taskstatus;

show tables;

desc project;
desc worker;
desc projectworker;
desc task;

select project.name, concat(worker.firstname,' ',worker.lastname) as name,task.title from 
project inner join projectworker on project.projectid=projectworker.projectid
inner join worker on worker.workerid=projectworker.workerid 
inner join task on project.projectid = task.projectid and worker.workerid = task.workerid
where project.projectid like '%good%';

select project.name,ifnull(worker.firstname,"No worker") firstname from project left join
projectworker on project.projectid = projectworker.projectid left join worker on 
worker.workerid  = projectworker.workerid;


select ifnull(project.name,"no project") projectname,worker.firstname from project right join
projectworker on project.projectid = projectworker.projectid right join worker on 
worker.workerid  = projectworker.workerid where project.projectid is null;

