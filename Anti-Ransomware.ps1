#Change Extension & Header For Ransom Protection 

[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") #Load The Object of Forms so you can Build GUI Objects Like Button , Check Box , Radio Box , Etc..
[System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") # Load The Object of Drawing  So you Can Load Images , Change Fonts , Change Color , Etc...




#Creat The Main Form
$ICON_Base64 = "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"
$ICON_Bytes = [System.Convert]::FromBase64String($ICON_Base64)
[System.IO.File]::WriteAllBytes("C:\Users\$env:username\Karem.ico",$ICON_Bytes)
$Main_form = New-Object System.Windows.Forms.Form
$Main_form.Width = 500
$Main_form.Height = 500
$Main_form.Text = "AntiRansom --KAF"
$icon = New-Object System.Drawing.icon ("C:\Users\$env:username\Karem.ico")
$Main_form.Icon = $icon



#Creat Tab Control 
$tap_con = New-Object System.Windows.Forms.TabControl  #We Creat a Tap Control , It likes The Main Form It will Contain The Tap Pages We Will Creat 
$tap_con.DataBindings.DefaultDataSourceUpdateMode = 0
$tap_con.Width = 500
$tap_con.Height = 500
$tap_con.top = 0
$tap_con.left = 0
$Main_Form.Controls.Add($tap_con)  # We Add it To The Main Form 


#Creat Hash Calc Tab Page
$set = New-Object System.Windows.Forms.TabPage
$set.DataBindings.DefaultDataSourceUpdateMode = 0
$set.Text = "Set”
#$Hash_calc.BackgroundImage = $img
$tap_con.Controls.Add($set)  # We Add It to The Tab Control
#Creat Hash Comparsion Tab Page
$back = New-Object System.Windows.Forms.TabPage
$back.DataBindings.DefaultDataSourceUpdateMode = 0
$back.Text = "Back"
$back.BackgroundImage = $img
$tap_con.Controls.Add($back)   # We Add it to The Tap Control 



#Creat Label For Change extension 

$label_extension = New-Object System.Windows.Forms.Label
$label_extension.Text = "Change Extension"
$label_extension.top = 20
$label_extension.Left = 20
$set.Controls.Add($label_extension)

#Creat The text Box for Dialog for change extension
$textbox_ext = New-Object System.Windows.Forms.TextBox
$textbox_ext.top = 60
$textbox_ext.Left = 20
$textbox_ext.Width = 370
$textbox_ext.Multiline = $true
$textbox_ext.ReadOnly = $true
$textbox_ext.AutoSize = $true
$set.Controls.Add($textbox_ext)


#Creat the Dialog
$Dialog = New-Object System.Windows.Forms.OpenFileDialog  # The Dialog to browse The Computer for a File 
$Dialog.Filter = "ALL Files (*.*) | *.*|Powershell (*.ps1)| *.ps1|Photoshop (*.PSD) | *.PSD"    # Creat a Filter So you can let the Dialog Show only a Specific Extensions , We Made 3 Types of extensions included All files , you can select any of them from the GUI
# important if show jelp is not set to true the display of the dialog may fail. The dialog is displayed in the ISE 
# but when running from commandline it neve pops up
$Dialog.ShowHelp = $true
#$Dialog.InitialDirectory = "C:\users\$env:username\Desktop"  # The Initial Directory of The Dialog , if it 's not assigned , The Default is The Path you are in 
$Dialog.Multiselect = $true  # This is The Default if You Set it to True , The user Can Select Multiple Items
 
#creat The Button for Dialog
$Browse_button = New-Object System.Windows.Forms.Button  #The Same Way We Created The Form But instead of the .Form it iss .Button , The Same Way With All Objects in System.Windows.Forms
$Browse_button.Text = "Browse" # The Text on The Button
$Browse_button.Width =60
$Browse_button.Height = 20 
$Browse_button.top = 60   # The Position of The Button
$Browse_button.left = 400
$set.Controls.Add($Browse_button)   # You Have To Add it to The  Form , it 's Not Added By Default , You Can use this Option to Display an Object after a Certain Object or After a time usin Cmdlt start-sleep -seconds 2  , We Add It here To The TabPage Because we want it to appear in The Tab Page
$Browse_button.Add_Click({   #When you Click This Button Those events Will Occure     
$Dialog.ShowDialog()   # Show The Dialog Which we Will Create in the Next Lines 
$textbox_ext.Text = $Dialog.FileNames  # Assign a Value to a Var
})

#chnage button for ext 

$change_but = New-Object System.Windows.Forms.Button
$change_but.Text = "Change"
$change_but.top = 100
$change_but.left = 20
$set.Controls.Add($change_but)

$change_but.Add_Click({
rename
})

$i =0 
function rename(){
    
    for ( $i=0 ; $i -lt $Dialog.FileNames.Length ; $i++)
        {
        $lastindexof_slash = $Dialog.FileNames[$i].LastIndexOf("\")
        $lastindexof_dot = $Dialog.FileNames[$i].LastIndexOf(".")
        [string] $newname = $Dialog.FileNames[$i][($lastindexof_slash+1)..($lastindexof_dot-1)] + $Dialog.FileNames[$i][($lastindexof_dot+1)..($Dialog.FileNames[$i].Length)]
        Rename-Item -Path $Dialog.FileNames[$i] -NewName $newname
         }
}




#Creat Chnage Header Label 

$label_header = New-Object System.Windows.Forms.Label
$label_header.Text = "Change Header"
$label_header.top = 150
$label_header.Left = 20
$set.Controls.Add($label_header)








#Creat The text Box for Dialog for change extension
$textbox_header = New-Object System.Windows.Forms.TextBox
$textbox_header.top = 200
$textbox_header.Left = 20
$textbox_header.Width = 370
$textbox_header.Multiline = $true
$textbox_header.ReadOnly = $true
$textbox_header.AutoSize = $true
$set.Controls.Add($textbox_header)


#Creat the Dialog
$Dialog_header = New-Object System.Windows.Forms.OpenFileDialog  # The Dialog to browse The Computer for a File 
$Dialog_header.Filter = "ALL Files (*.*) | *.*|Powershell (*.ps1)| *.ps1|Photoshop (*.PSD) | *.PSD"    # Creat a Filter So you can let the Dialog Show only a Specific Extensions , We Made 3 Types of extensions included All files , you can select any of them from the GUI
# important if show jelp is not set to true the display of the dialog may fail. The dialog is displayed in the ISE 
# but when running from commandline it neve pops up
$Dialog_header.ShowHelp = $true
#$Dialog.InitialDirectory = "C:\users\$env:username\Desktop"  # The Initial Directory of The Dialog , if it 's not assigned , The Default is The Path you are in 
$Dialog_header.Multiselect = $true  # This is The Default if You Set it to True , The user Can Select Multiple Items
 
#creat The Button for Dialog
$Browse_button_header = New-Object System.Windows.Forms.Button  #The Same Way We Created The Form But instead of the .Form it iss .Button , The Same Way With All Objects in System.Windows.Forms
$Browse_button_header.Text = "Browse" # The Text on The Button
$Browse_button_header.Width =60
$Browse_button_header.Height = 20 
$Browse_button_header.top = 200   # The Position of The Button
$Browse_button_header.left = 400
$set.Controls.Add($Browse_button_header)   # You Have To Add it to The  Form , it 's Not Added By Default , You Can use this Option to Display an Object after a Certain Object or After a time usin Cmdlt start-sleep -seconds 2  , We Add It here To The TabPage Because we want it to appear in The Tab Page
$Browse_button_header.Add_Click({   #When you Click This Button Those events Will Occure     
$Dialog_header.ShowDialog()   # Show The Dialog Which we Will Create in the Next Lines 
$textbox_header.Text = $Dialog_header.FileNames  # Assign a Value to a Var
})

#chnage button for ext 

$change_but_header = New-Object System.Windows.Forms.Button
$change_but_header.Text = "Change"
$change_but_header.top = 250
$change_but_header.left = 20
$set.Controls.Add($change_but_header)

#Warning 
$warning = New-Object System.Windows.Forms.Label
$warning.Text = " If You Change header You Will Not Be able To Run Your File Unless You Set The Correctheader back Using This Tool"
$warning.Top = 280
$warning.Left = 20
$warning.ForeColor = "red"
$warning.Width = 480
$warning.Height = 40
$set.Controls.Add($warning)


$change_but_header.Add_Click({
headerchange
})

#Change header Function 
$j =0 
function headerchange(){
    for($j=0 ; $j -lt $Dialog_header.FileNames.Length ; $j++)
        {
                $path = $Dialog_header.FileNames[$j]
                $bytes = [System.IO.File]::ReadAllBytes($path)
                $bytes[0] = 0
                $bytes[1] = 0
                [System.IO.File]::WriteAllBytes($path,$bytes)

        }

}


                                #Header Back Section 
 

 #headerBack lab

 $label_back = New-Object System.Windows.Forms.Label
 $label_back.Text = "Header back"
 $label_back.top = 20
 $label_back.Left = 20
 $back.Controls.Add($label_back)
 

 #Creat The text Box for Dialog for change extension
$textbox_header_back = New-Object System.Windows.Forms.TextBox
$textbox_header_back.top = 60
$textbox_header_back.Left = 20
$textbox_header_back.Width = 370
$textbox_header_back.Multiline = $true
$textbox_header_back.ReadOnly = $true
$textbox_header_back.AutoSize = $true
$back.Controls.Add($textbox_header_back)


#Creat the Dialog
$Dialog_header_back = New-Object System.Windows.Forms.OpenFileDialog  # The Dialog to browse The Computer for a File 
$Dialog_header_back.Filter = "ALL Files (*.*) | *.*|Powershell (*.ps1)| *.ps1|Photoshop (*.PSD) | *.PSD"    # Creat a Filter So you can let the Dialog Show only a Specific Extensions , We Made 3 Types of extensions included All files , you can select any of them from the GUI
# important if show jelp is not set to true the display of the dialog may fail. The dialog is displayed in the ISE 
# but when running from commandline it neve pops up
$Dialog_header_back.ShowHelp = $true
#$Dialog.InitialDirectory = "C:\users\$env:username\Desktop"  # The Initial Directory of The Dialog , if it 's not assigned , The Default is The Path you are in 
$Dialog_header_back.Multiselect = $true  # This is The Default if You Set it to True , The user Can Select Multiple Items
 
#creat The Button for Dialog
$Browse_button_header_back = New-Object System.Windows.Forms.Button  #The Same Way We Created The Form But instead of the .Form it iss .Button , The Same Way With All Objects in System.Windows.Forms
$Browse_button_header_back.Text = "Browse" # The Text on The Button
$Browse_button_header_back.Width =60
$Browse_button_header_back.Height = 20 
$Browse_button_header_back.top = 60   # The Position of The Button
$Browse_button_header_back.left = 400
$back.Controls.Add($Browse_button_header_back)   # You Have To Add it to The  Form , it 's Not Added By Default , You Can use this Option to Display an Object after a Certain Object or After a time usin Cmdlt start-sleep -seconds 2  , We Add It here To The TabPage Because we want it to appear in The Tab Page
$Browse_button_header_back.Add_Click({   #When you Click This Button Those events Will Occure     
$Dialog_header_back.ShowDialog()   # Show The Dialog Which we Will Create in the Next Lines 
$textbox_header_back.Text = $Dialog_header_back.FileNames  # Assign a Value to a Var
})

#Creat Group for CheckBoxes
$group = New-Object System.Windows.Forms.GroupBox
$group.top = 50
$group.Left = 0
$group.Width = 500
$group.Height = 100
$back.Controls.Add($group)
#Creat Check boxes
$Checkbox_Names = ".JPG", ".exe", 
               ".pdf",   ".docx",  ".DLL", ".rar", ".zip", 
                   ".png", ".xlsx", ".psd"




$check_box = New-Object System.Windows.Forms.RadioButton
$check_box.text = $Checkbox_Names[0]
$check_box.Top = 50 
$check_box.Left = 0 
$check_box.Width = 50
$group.Controls.Add($check_box)
$k +=1;
$k

$check_box_2 = New-Object System.Windows.Forms.RadioButton
$check_box_2.text = $Checkbox_Names[1]
$check_box_2.Top = 50 
$check_box_2.Left = 50
$check_box_2.Width = 50
$group.Controls.Add($check_box_2)

$check_box_3 = New-Object System.Windows.Forms.RadioButton
$check_box_3.text = $Checkbox_Names[2]
$check_box_3.Top = 50 
$check_box_3.Left = 100
$check_box_3.Width = 50
$group.Controls.Add($check_box_3)


$check_box_4 = New-Object System.Windows.Forms.RadioButton
$check_box_4.text = $Checkbox_Names[3]
$check_box_4.Top = 50 
$check_box_4.Left = 150
$check_box_4.Width = 50
$group.Controls.Add($check_box_4)

$check_box_5 = New-Object System.Windows.Forms.RadioButton
$check_box_5.text = $Checkbox_Names[4]
$check_box_5.Top = 50 
$check_box_5.Left = 200
$check_box_5.Width = 50
$group.Controls.Add($check_box_5)

$check_box_6 = New-Object System.Windows.Forms.RadioButton
$check_box_6.text = $Checkbox_Names[5]
$check_box_6.Top = 50 
$check_box_6.Left = 250
$check_box_6.Width = 50
$group.Controls.Add($check_box_6)

$check_box_7 = New-Object System.Windows.Forms.RadioButton
$check_box_7.text = $Checkbox_Names[6]
$check_box_7.Top = 50 
$check_box_7.Left = 300
$check_box_7.Width = 50
$group.Controls.Add($check_box_7)

$check_box_8 = New-Object System.Windows.Forms.RadioButton
$check_box_8.text = $Checkbox_Names[7]
$check_box_8.Top = 50 
$check_box_8.Left = 350
$check_box_8.Width = 50
$group.Controls.Add($check_box_8)

$check_box_9 = New-Object System.Windows.Forms.RadioButton
$check_box_9.text = $Checkbox_Names[8]
$check_box_9.Top = 50 
$check_box_9.Left = 400
$check_box_9.Width = 50
$group.Controls.Add($check_box_9)



#chnage button for ext 

$change_but_header_back = New-Object System.Windows.Forms.Button
$change_but_header_back.Text = "Change"
$change_but_header_back.top = 150
$change_but_header_back.left = 20
$back.Controls.Add($change_but_header_back)

$change_but_header_back.Add_click({
    headerchangeback

})

function headerchangeback(){
    for($a=0 ; $a -lt $Dialog_header_back.FileNames.Length ; $a++)
        {
                $path_b = $Dialog_header_back.FileNames[$a]
                $bytes_b = [System.IO.File]::ReadAllBytes($path_b)
                if($check_box.Checked){
                $bytes_b[0] = 255
                $bytes_b[1] = 216
                write-host "karem"
                }
                elseif($check_box_2.Checked){
                $bytes_b[0] = 77
                $bytes_b[1] = 90
                }
                elseif($check_box_3.Checked){
                $bytes_b[0] = 37
                $bytes_b[1] = 80
                }
                elseif($check_box_4.Checked){
                $bytes_b[0] = 80
                $bytes_b[1] = 75
                }
                elseif($check_box_5.Checked){
                $bytes_b[0] = 77
                $bytes_b[1] = 90
                }

                elseif($check_box_6.Checked){
                $bytes_b[0] = 82
                $bytes_b[1] = 97
                }
                elseif($check_box_7.Checked){
                $bytes_b[0] = 80
                $bytes_b[1] = 75
                }
                elseif($check_box_7.Checked){
                $bytes_b[0] = 137
                $bytes_b[1] = 80
                }
                elseif($check_box_8.Checked){
                $bytes_b[0] = 80
                $bytes_b[1] = 75
                }
                 elseif($check_box_8.Checked){
                $bytes_b[0] = 56
                $bytes_b[1] = 66
                }

                [System.IO.File]::WriteAllBytes($path_b,$bytes_b)

        }

}


#".JPG",   ".exe",  
 #              ".pdf",     ".docx",  ".DLL", ".rar", ".zip", ".7zip", 
  #                 ".png", ".xlsx", ".sql",  ".xml", ".psd"

$Main_form.ShowDialog()


