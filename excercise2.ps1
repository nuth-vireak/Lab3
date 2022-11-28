# AUTHOR: NUTH VIREAK

# create hash table of student_list to store number of students
# each student has an id, name
# $student_list = @{
    
#     "student1" = @{
#         "id" = 1
#         "name" = "Nuth Vireak"
#     }

#     "student2" = @{
#         "id" = 2
#         "name" = "Sokheng Seng"
#     }
# }

# # print student 1 information
# Write-Host "Student 1 Information"
# Write-Host "ID: [$($student_list.student1.id)]"
# Write-Host "Name: [$($student_list.student1.name)]"

# # print all student information using foreach loop
# Write-Host "All Student Information"
# foreach ($student in $student_list.GetEnumerator()) {
#     Write-Host "ID: [$($student.Value.id)]"
#     Write-Host "Name: [$($student.Value.name)]"
# }

$student_info = @{}
$student_list = @()

# Create menu
Write-Host "--------------------------------"
Write-Host "1. Insert new student"
Write-Host "2. Display student"
Write-Host "--------------------------------"

# using loop to input student information using switch case
while ($true) {

    $choice = Read-Host "Enter your choice: "

    switch ($choice) {

        1 {
            # Input student id
            $student_id = Read-Host "Enter student id: "

            # Input student name
            $student_name = Read-Host "Enter student name: "

            # store student information in a hash table student[]
            $student_info = @{
                "id" = $student_id
                "name" = $student_name
            }

            # add student information to student_list
            $student_list += $student_info
        }
        2 {
            # print all student information using foreach loop student[1], student[2], student[3]
            Write-Host "All Student Information"
            foreach ($student_info in $student_list) {

                Write-Host "Student Index: [$($student_list.IndexOf($student_info))]"
                Write-Host "ID: [$($student_info.id)]"
                Write-Host "Name: [$($student_info.name)]"
            }
        }
    }
}

