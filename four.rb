

SELECT 
CASE WHEN g.Grade < 8 THEN NULL ELSE s.Name END AS Name, #if the grade is lower than 8 then don't include but if higher than get name
g.Grade, #gets the grade of only the students who have a grade higher than 8
s.Marks #gets the marks of only the students who have a grade higher than 8
FROM #joins the students and grades tables
Students s INNER JOIN Grades g ON s.Marks BETWEEN g.Min_Mark and g.Max_Mark
ORDER BY #and then orders the grade and name and marks
g.Grade DESC,
Name,
s.Marks

