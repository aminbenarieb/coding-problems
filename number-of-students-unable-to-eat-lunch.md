 Number of Students Unable to Eat Lunch
 
 ### Solution
[[queue]] [[stack]]

```python

# sandwiches[i]: i-th sandwich in the stack (i = 0 is the top of the stack) 
# students[j]: j-th student in the initial queue (j = 0 is the front of the queue)
# This continues until none of the queue students want to take the top sandwich and are thus unable to eat - ??
class Solution:
    def countStudents(self, students: List[int], sandwiches: List[int]) -> int:
        hungry_students_count = 0
        while len(students) != 0:
            first_student = students[0]
            top_sandwich = sandwiches[0]
            if top_sandwich == first_student:
                students.pop(0)
                sandwiches.pop(0)
                hungry_students_count = 0
            else:
                students.append(students.pop(0))
                hungry_students_count += 1
            if hungry_students_count == len(students):
                break
        return len(students)      
#    students          sandwiches            students          sandwiches
# 1: [1,1,1,0,0,1], [1,0,0,0,1,1] -> [1,1,0,0,1], [0,0,0,1,1] 
# 2: [1,1,0,0,1], [0,0,0,1,1]  -> [1,0,0,1,1], [0,0,0,1,1]
# 3: [1,0,0,1,1], [0,0,0,1,1] -> [0,0,1,1, 1], [0,0,0,1,1]
# 4: [0,0,1,1, 1], [0,0,0,1,1] -> [0,1,1, 1], [0,0,1,1]
# 5: [0,1,1, 1], [0,0,1,1] -> [1,1, 1], [0,1,1]
# 6: [1,1,1], [0,1,1] ->

# [1,1,0,0]
# [0,1,0,1]
# [1,1,1,0,0,1]
# [1,0,0,0,1,1]


 ```
 
 #easy