use employee;

select E.EName, D.DName
from tEmployee E
left join tDepartment D on E.DNumber = D.DNumber;


select P.PDate, I.IName, P.PCount
from tProduction P
join tItem I on P.INumber = I.INumber;

select C.CName, O.ODate
from tOrder O
join tCustomer C on O.CNumber = C.CNumber;

select R.RNumber, R.RDate, RR.RReason
from tReturn R
join tReturnReason RR on R.RRNumber = RR.RRNumber;

select D.DName, E.EName, P.INumber
from tProduction P
join tEmployee E on P.ENumber = E.ENumber
join tDepartment D on E.DNumber = D.DNumber;

select d.DName, e.EName, p.INumber
from tProduction p
join tEmployee e on p.ENumber = e.ENumber
join tDepartment d on e.DNumber = d.DNumber;

select c.CName, i.IName
from tOrder o
join tCustomer c on o.CNumber = c.CNumber
join `tProduction`p on o.`PNumber` = p.PNumber
join tItem i on p.INumber = i.INumber;

select c.CName, i.IName, r.RCount
from tReturn r
join tOrder o on r.ONumber = o.ONumber
join tCustomer c on o.CNumber = c.CNumber
join `tProduction`p on o.PNumber = p.PNumber
join tItem i on p.INumber = i.INumber;

select e.EName, d.DName, r.RName
from tEmployee e
join tDepartment d on e.DNumber = d.DNumber
join tRank r on e.RNumber = r.RNumber;

select c.CName, COUNT(o.ONumber) as OrderCount
from tCustomer c
left join tOrder o on c.CNumber = o.CNumber
GROUP by c.CName;


