-- https://platform.stratascratch.com/coding/9972-find-the-base-pay-for-police-captains
-- easy

SELECT employeename, basepay
FROM sf_public_salaries
WHERE jobtitle = 'CAPTAIN III (POLICE DEPARTMENT)';