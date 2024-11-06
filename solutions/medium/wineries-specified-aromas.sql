-- https://platform.stratascratch.com/coding/10026-find-all-wineries-which-produce-wines-by-possessing-aromas-of-plum-cherry-rose-or-hazelnut

SELECT winery 
FROM winemag_p1
WHERE description REGEXP '\\bcherry\\b'
    OR description REGEXP '\\bplum\\b'
    OR description REGEXP '\\brose\\b'
    OR description REGEXP '\\bhazelnut\\b';