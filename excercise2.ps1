# AUTHOR: NUTH VIREAK

$student_info = @{}
$student_list = @()

while ($true) {

    # Create menu
    Write-Host "MENU-----------------------"
    Write-Host "1. Insert new student"
    Write-Host "2. Delete student"
    Write-Host "3. Display student"
    Write-Host "---------------------------"

    # Input choice
    [int]$choice = Read-Host "Enter your choice: "

    switch ($choice) {

        # Insert new student
        1 {
            Write-Host ""

            # Input student id
            [int]$student_id = Read-Host "Enter student id: "

            # Input student name
            $student_name = Read-Host "Enter student name: "

            # Input student skill
            $student_skill = Read-Host "Enter student skill: "

            # Input student department
            $student_department = Read-Host "Enter student department: "

            Write-Host ""

            # Add student informatoin to student_info
            $student_info = @{
                "id" = $student_id
                "name" = $student_name
                "skill" = $student_skill
                "department" = $student_department
            }

            # Add student_info to student_list
            $student_list += $student_info

            Write-Host "Student information has been inserted successfully!"

            Write-Host ""
        }

        # Delete student
        2 {
            Write-Host ""

            # Input student id
            [int]$student_id = Read-Host "Enter student id: "

            Write-Host ""

            # Remove value from student_info by student_id
            $student_list = $student_list | Where-Object { $_.id -ne $student_id }
            
            Write-Host ""
            Write-Host "Student information has been deleted successfully!"
            Write-Host ""
        }

        # Display student
        3 {
            Write-Host ""
            Write-Host "Student Information ---------------------------------------------------------------------------------"
            Write-Host "ID`t`tNAME`t`tSKILL`t`tDEPARTMENT"
            foreach ($student_info in $student_list) {
                Write-Host "$($student_info.id)`t`t$($student_info.name)`t`t$($student_info.skill)`t`t$($student_info.department)"
            }
            Write-Host "-----------------------------------------------------------------------------------------------------"
            Write-Host ""
        }
    }
}

# pause the script
read-host "Press Enter to continue..."

