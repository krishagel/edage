select 
    DISTINCT(cert.`HPMCEM-CERT-NBR`) localuserid, n.`FIRST-NAME` firstname, n.`LAST-NAME` lastname, n.`INTERNET-ADDRESS` email,bld.`HAABLD-STATE-CODE` siteid
from haapro_profile pro
join haabld_bld_codes bld on pro.`HAABLD-BLD-CODE` = bld.`HAABLD-BLD-CODE` AND bld.`HAABLD-STATE-CODE` IN ('3635','3488','3226','2564','2848')
join name n on pro.`NAME-ID` = n.`NAME-ID`
join hpmcem_cert_mst cert on cert.`NAME-ID` = pro.`NAME-ID`
left join address a ON n.`ADDRESS-ID` = a.`ADDRESS-ID`
left join zip z on a.`ZIP-CODE` = z.`ZIP-CODE`
where pro.`nalphakey` NOT LIKE '*%'