Function MainMenu {
    <# 
    Main Menu is the initial startup for the application, user is presented with a brief explaination as well as an about menu for version checking
        Future implementation:
        *Change Logs
        *External References
        *Explainations user modifications (End goal is to become a catch all, well rounded and refined for mission easy of use)
    #>

    Add-Type -AssemblyName System.Windows.Forms

    $401CPT = New-Object system.Windows.Forms.Form
    $401CPT.Text = "T.0.M.B - Main Menu"
    $401CPT.TopMost = $true
    $401CPT.Width = 620
    $401CPT.Height = 375
    $401CPT.StartPosition = "CenterScreen"

    $MainMenu_Title = New-Object system.windows.Forms.TextBox
    $MainMenu_Title.BorderStyle = UIElementBorderStyle.None
    $MainMenu_Title.Text = "    THE ONE™ Mission Builder"
    $MainMenu_Title.Width = 317
    $MainMenu_Title.Height = 20
    $MainMenu_Title.enabled = $false
    $MainMenu_Title.location = new-object system.drawing.point(135,18)
    $MainMenu_Title.Font = "Microsoft Sans Serif,16"
    $401CPT.controls.Add($MainMenu_Title)

    $MainMenu_Next = New-Object system.windows.Forms.Button
    $MainMenu_Next.Text = ">> Next"
    $MainMenu_Next.Width = 90
    $MainMenu_Next.Height = 30
    $MainMenu_Next.Add_Click({MissionCreate($401CPT.Dispose())})
    $MainMenu_Next.location = new-object system.drawing.point(505,285)
    $MainMenu_Next.Font = "Microsoft Sans Serif,10"
    $401CPT.controls.Add($MainMenu_Next)

    $MainMenu_About = New-Object system.windows.Forms.Button
    $MainMenu_About.Text = "About"
    $MainMenu_About.Width = 90
    $MainMenu_About.Height = 30
    $MainMenu_About.Add_Click({About($401CPT.Dispose())})
    $MainMenu_About.location = new-object system.drawing.point(15,285)
    $MainMenu_About.Font = "Microsoft Sans Serif,10"
    $401CPT.controls.Add($MainMenu_About)

    $MainMenuText = New-Object system.windows.Forms.TextBox
    $MainMenuText.Multiline = $true
    $MainMenuText.Text = "With this application you can create a baseline and reports with a simple to use graphical user interface."
    $MainMenuText.Width = 503
    $MainMenuText.Height = 120
    $MainMenuText.enabled = $false
    $MainMenuText.location = new-object system.drawing.point(45,76)
    $MainMenuText.Font = "Microsoft Sans Serif,13"
    $401CPT.controls.Add($MainMenuText)

    $textBox8 = New-Object system.windows.Forms.TextBox
    $textBox8.Text = "TEAM 401 CPT `"THE ONE`""
    $textBox8.Width = 120
    $textBox8.Height = 20
    $textBox8.enabled = $false
    $textBox8.location = new-object system.drawing.point(0,325)
    $textBox8.Font = "Microsoft Sans Serif,6"
    $401CPT.controls.Add($textBox8)

    <#$textBox9 = New-Object system.windows.Forms.TextBox
    $textBox9.Multiline = $true
    $textBox9.Text = "Press Next to Continue"
    $textBox9.Width = 145
    $textBox9.Height = 32
    $textBox9.enabled = $false
    $textBox9.location = new-object system.drawing.point(453,251)
    $textBox9.Font = "Microsoft Sans Serif,10"
    $401CPT.controls.Add($textBox9)#>

    [void]$401CPT.ShowDialog()
    $401CPT.Dispose()
}

Function About {
    Add-Type -AssemblyName System.Windows.Forms

    $AboutMenu = New-Object system.Windows.Forms.Form
    $AboutMenu.Text = "About T.0.M.B"
    $AboutMenu.TopMost = $true
    $AboutMenu.Width = 620
    $AboutMenu.Height = 375
    $AboutMenu.StartPosition = "CenterScreen"

    $Close_BackToMainMenu = New-Object system.windows.Forms.Button
    $Close_BackToMainMenu.Text = "Close"
    $Close_BackToMainMenu.Width = 90
    $Close_BackToMainMenu.Height = 30
    $Close_BackToMainMenu.Add_Click({MainMenu($AboutMenu.Dispose())})
    $Close_BackToMainMenu.location = new-object system.drawing.point(505,285)
    $Close_BackToMainMenu.Font = "Microsoft Sans Serif,10"
    $AboutMenu.controls.Add($Close_BackToMainMenu)

    $About_MainMenu = New-Object system.windows.Forms.TextBox
    $About_MainMenu.Multiline = $true
    $About_MainMenu.Text = "Cyber Protection Brigade Product Version 1.3"
    $About_MainMenu.Width = 389
    $About_MainMenu.Height = 32
    $About_MainMenu.enabled = $false
    $About_MainMenu.location = new-object system.drawing.point(95,54)
    $About_MainMenu.Font = "Microsoft Sans Serif,10,style=Bold"
    $AboutMenu.controls.Add($About_MainMenu)

    $AboutText_MainMenu = New-Object system.windows.Forms.TextBox
    $AboutText_MainMenu.Multiline = $true
    $AboutText_MainMenu.Text = "Standalone product used in order to provide CPT a GUI based reporting and baseline analysis during mission."
    $AboutText_MainMenu.Width = 459
    $AboutText_MainMenu.Height = 71
    $AboutText_MainMenu.enabled = $false
    $AboutText_MainMenu.location = new-object system.drawing.point(66,133)
    $AboutText_MainMenu.Font = "Microsoft Sans Serif,10"
    $AboutMenu.controls.Add($AboutText_MainMenu)

    [void]$AboutMenu.ShowDialog()
    $AboutMenu.Dispose()
}

Function MissionCreate($Folder) {
$global:Folder = ""
    Add-Type -AssemblyName System.Windows.Forms

    $MissionName = New-Object system.Windows.Forms.Form
    $MissionName.Text = "T.0.M.B - Create Mission Folder"
    $MissionName.TopMost = $true
    $MissionName.Width = 620
    $MissionName.Height = 375
    $MissionName.StartPosition = "CenterScreen"

    $MissionCreate_Text = New-Object system.windows.Forms.TextBox
    $MissionCreate_Text.Text = " PLEASE PROVIDE MISSION NAME"
    $MissionCreate_Text.Width = 525
    $MissionCreate_Text.Height = 20
    $MissionCreate_Text.enabled = $false
    $MissionCreate_Text.location = new-object system.drawing.point(43,43)
    $MissionCreate_Text.Font = "Microsoft Sans Serif,23"
    $MissionName.controls.Add($MissionCreate_Text)

    $MissionCreate_Help = New-Object system.windows.Forms.Button
    $MissionCreate_Help.Text = "Help"
    $MissionCreate_Help.Width = 90
    $MissionCreate_Help.Height = 30
    $MissionCreate_Help.Add_Click({MissionCreate_HelpMenu($MissionName.Dispose())})
    $MissionCreate_Help.location = new-object system.drawing.point(15,285)
    $MissionCreate_Help.Font = "Microsoft Sans Serif,10"
    $MissionName.controls.Add($MissionCreate_Help)

    $MissionCreate_UserInput = New-Object system.windows.Forms.TextBox
    $MissionCreate_UserInput.Width = 349
    $MissionCreate_UserInput.Height = 20
    $MissionCreate_UserInput.Text = "$global:Folder"
    $MissionCreate_UserInput.location = new-object system.drawing.point(128,134)
    $MissionCreate_UserInput.Font = "Microsoft Sans Serif,10"
    $MissionCreate_UserInput.Add_TextChanged({ $MissionCreate_Next.Enabled = If($This.Text) {$true} Else {$false} })
    $MissionName.Controls.Add($MissionCreate_UserInput)
    $Folder = $MissionCreate_UserInput
           
    $MissionCreate_Next = New-Object system.windows.Forms.Button
    $MissionCreate_Next.Text = ">> Next"
    $MissionCreate_Next.Width = 90
    $MissionCreate_Next.Height = 30
    $MissionCreate_Next.Enabled = $false
    $MissionCreate_Next.Add_Click({
    MissionCreate_Button
    Authentication($MissionName.Dispose())
    })
    $MissionCreate_Next.location = new-object system.drawing.point(505,285)
    $MissionCreate_Next.Font = "Microsoft Sans Serif,10"
    $MissionName.controls.Add($MissionCreate_Next)

    $MissionCreate_Previous = New-Object system.windows.Forms.Button
    $MissionCreate_Previous.Text = "Prev <<"
    $MissionCreate_Previous.Width = 90
    $MissionCreate_Previous.Height = 30
    $MissionCreate_Previous.Add_Click({MainMenu($MissionName.Dispose())})
    $MissionCreate_Previous.location = new-object system.drawing.point(400,285)
    $MissionCreate_Previous.Font = "Microsoft Sans Serif,10"
    $MissionName.controls.Add($MissionCreate_Previous)


    Function MissionCreate_Button {
            $global:Folder = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(‘.\’)+"\"+$MissionCreate_UserInput.Text
            new-item $global:Folder -type Directory -ErrorAction SilentlyContinue
    }

    [void]$MissionName.ShowDialog()
    $MissionName.Dispose()
}

Function MissionCreate_HelpMenu {

    Add-Type -AssemblyName System.Windows.Forms
    $HelpMenu = New-Object System.Windows.Forms.Form
    $HelpMenu.Text = "T.0.M.B - Help"
    $HelpMenu.TopMost = $true
    $HelpMenu.Width = 620
    $HelpMenu.Height = 375
    $HelpMenu.StartPosition = "CenterScreen"

    $HelpMenu_Title = New-Object System.Windows.Forms.Textbox
    $HelpMenu_Title.Text = "Mission Name Requirements: No spaces, typical naming conventions`r`n`r`n`r`n
Creates Folder with Mission Name inside the folder where this script was launched`r`n`r`n`r`n
All additional documents will be created inside of this folder"
    $HelpMenu_Title.Width = 317
    $HelpMenu_Title.Height = 300
    $HelpMenu_Title.Multiline = $true
    $HelpMenu_Title.enabled = $false
    $HelpMenu_Title.location = new-object system.drawing.point(135,18)
    $HelpMenu_Title.Font = "Microsoft Sans Serif,8"
    $HelpMenu.controls.Add($HelpMenu_Title)

    $Close_BackToMissionCreate = New-Object system.windows.Forms.Button
    $Close_BackToMissionCreate.Text = "Close"
    $Close_BackToMissionCreate.Width = 90
    $Close_BackToMissionCreate.Height = 30
    $Close_BackToMissionCreate.Add_Click({MissionCreate($HelpMenu.Dispose())})
    $Close_BackToMissionCreate.location = new-object system.drawing.point(505,285)
    $Close_BackToMissionCreate.Font = "Microsoft Sans Serif,10"
    $HelpMenu.controls.Add($Close_BackToMissionCreate)

    [void]$HelpMenu.ShowDialog()
    $HelpMenu.Dispose()
}

Function Authentication {
    
    Add-Type -AssemblyName System.Windows.Forms

    $AuthMenu = New-Object System.Windows.Forms.Form
    $AuthMenu.Text = "Authentication Method Selection"
    $AuthMenu.TopMost = $true
    $AuthMenu.Width = 620
    $AuthMenu.Height = 375
    $AuthMenu.StartPosition = "CenterScreen"

    $Auth_Textbox = New-Object System.Windows.Forms.TextBox
    $Auth_Textbox.Text = "`tPlease Select Authentication Method"
    $Auth_Textbox.Width = 300
    $Auth_Textbox.Height = 20
    $Auth_Textbox.Enabled = $false
    $Auth_Textbox.Location = New-Object System.Drawing.Point(150,50)
    $Auth_Textbox.Font = "Microsoft Sans Serif,10"
    $AuthMenu.Controls.Add($Auth_Textbox)

    $Auth_Default = New-Object System.Windows.Forms.RadioButton
    $Auth_Default.Text = "Current Credentials"
    $Auth_Default.AutoSize = $true
    $Auth_Default.Width = 104
    $Auth_Default.Height = 20
    $Auth_Default.Add_Click({AuthSelection})
    $Auth_Default.Location = New-Object System.Drawing.Point(125,100)
    $Auth_Default.Font = "Microsoft Sans Serif,10"
    $AuthMenu.Controls.Add($Auth_Default)
        
    $Auth_UserPass = New-Object System.Windows.Forms.RadioButton
    $Auth_UserPass.Text = "Username / Password"
    $Auth_UserPass.AutoSize = $true
    $Auth_UserPass.Width = 104
    $Auth_UserPass.Height = 20
    $Auth_UserPass.Add_Click({AuthSelection})
    $Auth_UserPass.Location = New-Object System.Drawing.Point(125,150)
    $Auth_UserPass.Font = "Microsoft Sans Serif,10"
    $AuthMenu.Controls.Add($Auth_UserPass)

    $Auth_PKI = New-Object System.Windows.Forms.RadioButton
    $Auth_PKI.Text = "PKI / CAC (Active Directory)"
    $Auth_PKI.AutoSize = $true
    $Auth_PKI.Width = 104
    $Auth_PKI.Height = 20
    $Auth_PKI.Add_Click({AuthSelection})
    $Auth_PKI.Location = New-Object System.Drawing.Point(125,200)
    $Auth_PKI.Font = "Microsoft Sans Serif,10"
    $AuthMenu.Controls.Add($Auth_PKI)

    $Auth_User_Text = New-Object System.Windows.Forms.TextBox
    $Auth_User_Text.Text = "Username : "
    $Auth_User_Text.Width = 100
    $Auth_User_Text.Height = 20
    $Auth_User_Text.Visible = $false
    $Auth_User_Text.Enabled = $false
    $Auth_User_Text.Location = New-Object System.Drawing.Point(400,100)
    $Auth_User_Text.Font = "Microsoft Sans Serif,10"
    $AuthMenu.Controls.Add($Auth_User_Text)

    $Auth_User_Input = New-Object System.Windows.Forms.TextBox
    $Auth_User_Input.Width = 100
    $Auth_User_Input.Height = 20
    $Auth_User_Input.Visible = $false
    $Auth_User_Input.Location = New-Object System.Drawing.Point(400,120)
    $Auth_User_Input.Font = "Microsoft Sans Serif,10"
    $AuthMenu.Controls.Add($Auth_User_Input)

    $Auth_Pass_Text = New-Object System.Windows.Forms.TextBox
    $Auth_Pass_Text.Text = "Password :"
    $Auth_Pass_Text.Width = 100
    $Auth_Pass_Text.Height = 20
    $Auth_Pass_Text.Visible = $false
    $Auth_Pass_Text.Enabled = $false
    $Auth_Pass_Text.Location = New-Object System.Drawing.Point(400,150)
    $Auth_Pass_Text.Font = "Microsoft Sans Serif,10"
    $AuthMenu.Controls.Add($Auth_Pass_Text)

    $Auth_Pass_Input = New-Object system.windows.Forms.TextBox
    $Auth_Pass_Input.Width = 100
    $Auth_Pass_Input.Height = 20
    $Auth_Pass_Input.visible = $false
    $Auth_Pass_Input.location = new-object system.drawing.point(400,170)
    $Auth_Pass_Input.Font = "Microsoft Sans Serif,10"
    $AuthMenu.controls.Add($Auth_Pass_Input)

    $Auth_Help = New-Object system.windows.Forms.Button
    $Auth_Help.Text = "Help"
    $Auth_Help.Width = 90
    $Auth_Help.Height = 30
    #Need to add this menu still.
    #$Auth_Help.Add_Click({AuthenticationHelp($AuthMenu.Dispose())})
    $Auth_Help.location = new-object system.drawing.point(15,285)
    $Auth_Help.Font = "Microsoft Sans Serif,10"
    $AuthMenu.controls.Add($Auth_Help)

    $Auth_Prev = New-Object system.windows.Forms.Button
    $Auth_Prev.Text = "Prev <<"
    $Auth_Prev.Width = 90
    $Auth_Prev.Height = 30
    $Auth_Prev.Add_Click({MissionCreate($AuthMenu.Dispose())})
    $Auth_Prev.location = new-object system.drawing.point(400,285)
    $Auth_Prev.Font = "Microsoft Sans Serif,10"
    $AuthMenu.controls.Add($Auth_Prev)

    $Auth_Next = New-Object system.windows.Forms.Button
    $Auth_Next.Text = ">> Next"
    $Auth_Next.Width = 90
    $Auth_Next.Height = 30
    $Auth_Next.Add_Click({LocalDomainSelect($AuthMenu.Dispose())})
    $Auth_Next.location = new-object system.drawing.point(505,285)
    $Auth_Next.Font = "Microsoft Sans Serif,10"
    $AuthMenu.controls.Add($Auth_Next)

    Function AuthSelection {
        if ($Auth_UserPass.Checked -eq $true){
            $Auth_User_Text.Visible = $true
            $Auth_User_Input.Visible = $true
            $Auth_Pass_Text.Visible = $true
            $Auth_Pass_Input.Visible = $true
            }
        else {
            $Auth_User_Text.Visible = $false
            $Auth_User_Input.Visible = $false
            $Auth_Pass_Text.Visible = $false
            $Auth_Pass_Input.Visible = $false
            }
        }


    [void]$AuthMenu.ShowDialog()
    $AuthMenu.Dispose()
}

Function LocalDomainSelect {

    Add-Type -AssemblyName System.Windows.Forms

    $LD_Menu = New-Object system.Windows.Forms.Form
    $LD_Menu.Text = "Local or Domain Scripts"
    $LD_Menu.TopMost = $true
    $LD_Menu.Width = 620
    $LD_Menu.Height = 375
    $LD_Menu.StartPosition = "CenterScreen"

    $LD_Text = New-Object system.windows.Forms.TextBox
    $LD_Text.Text = "   Please select either Local machine or Domain "
    $LD_Text.Width = 425
    $LD_Text.Height = 20
    $LD_Text.enabled = $false
    $LD_Text.location = new-object system.drawing.point(80,40)
    $LD_Text.Font = "Microsoft Sans Serif,15"
    $LD_Menu.controls.Add($LD_Text)

    $LocalMachine = New-Object system.windows.Forms.RadioButton
    $LocalMachine.Text = "Local Machine"
    $LocalMachine.AutoSize = $true
    $LocalMachine.Width = 104
    $LocalMachine.Height = 20
    $LocalMachine.enabled = $true
    $LocalMachine.Add_Click({
        $Next.Enabled = $true
        })
    $LocalMachine.location = new-object system.drawing.point(245,136)
    $LocalMachine.Font = "Microsoft Sans Serif,10"
    $LD_Menu.controls.Add($LocalMachine)

    $Domain = New-Object system.windows.Forms.RadioButton
    $Domain.Text = "Domain"
    $Domain.AutoSize = $true
    $Domain.Width = 104
    $Domain.Height = 20
    $Domain.enabled = $true
    $Domain.Add_Click({
        $Next.Enabled = $true
        })
    $Domain.location = new-object system.drawing.point(244,194)
    $Domain.Font = "Microsoft Sans Serif,10"
    $LD_Menu.controls.Add($Domain)

    $Next = New-Object system.windows.Forms.Button
    $Next.Text = ">> Next"
    $Next.Width = 90
    $Next.Height = 30
    $Next.Enabled = $false
    $Next.Add_Click({
        If ($LocalMachine.Checked -eq $true){
        Write-Host "Local Scripts"
        Local_Scripts_Menu($LD_Menu.Dispose())
        }
        Else {
        Write-Host "Domain Scripts"
        Domain_Scripts_Menu($LD_Menu.Dispose())
        }
    })
    $Next.location = new-object system.drawing.point(505,285)
    $Next.Font = "Microsoft Sans Serif,10"
    $LD_Menu.controls.Add($Next)

    $Previous = New-Object system.windows.Forms.Button
    $Previous.Text = "Prev <<"
    $Previous.Width = 90
    $Previous.Height = 30
    $Previous.Add_Click({MissionCreate($LD_Menu.Dispose())})
    $Previous.location = new-object system.drawing.point(400,285)
    $Previous.Font = "Microsoft Sans Serif,10"
    $LD_Menu.controls.Add($Previous)

    $Help = New-Object system.windows.Forms.Button
    $Help.Text = "Help"
    $Help.Width = 90
    $Help.Height = 30
    $Help.Add_Click({LocalDomainHelp($LD_Menu.Dispose())})
    $Help.location = new-object system.drawing.point(15,285)
    $Help.Font = "Microsoft Sans Serif,10"
    $LD_Menu.controls.Add($Help)

    [void]$LD_Menu.ShowDialog()
    $LD_Menu.Dispose()
}

Function LocalDomainHelp {
    Add-Type -AssemblyName System.Windows.Forms

    $LD_Help = New-Object system.Windows.Forms.Form
    $LD_Help.Text = "Local or Domain Scripts Help"
    $LD_Help.TopMost = $true
    $LD_Help.Width = 620
    $LD_Help.Height = 375
    $LD_Help.StartPosition = "CenterScreen"

    $LD_Help_Text = New-Object system.windows.Forms.TextBox
    $LD_Help_Text.Multiline = $true
    $LD_Help_Text.Text = "Local Machine will allow only enumeration / baseline of the current machine where application is being executed from.`r`n`r`nDomain will allow enumeration / baseline of multiple computers within the same domain. "
    $LD_Help_Text.Width = 425
    $LD_Help_Text.Height = 200
    $LD_Help_Text.enabled = $false
    $LD_Help_Text.location = new-object system.drawing.point(80,40)
    $LD_Help_Text.Font = "Microsoft Sans Serif,15"
    $LD_Help.controls.Add($LD_Help_Text)

    $Close_BackToLDMenu = New-Object system.windows.Forms.Button
    $Close_BackToLDMenu.Text = "Close"
    $Close_BackToLDMenu.Width = 90
    $Close_BackToLDMenu.Height = 30
    $Close_BackToLDMenu.Add_Click({LocalDomainSelect($LD_Help.Dispose())})
    $Close_BackToLDMenu.location = new-object system.drawing.point(505,285)
    $Close_BackToLDMenu.Font = "Microsoft Sans Serif,10"
    $LD_Help.controls.Add($Close_BackToLDMenu)

    [void]$LD_Help.ShowDialog()
    $LD_Help.Dispose()
}

Function Local_Scripts_Menu {

$IP_Local = $((ipconfig | findstr "IPv4 Address*" | Select -First 1 ) -replace "   IPv4 Address. . . . . . . . . . . : ","")
New-Item $global:Folder\$IP_Local -Type Directory
Write-Host $global:Folder\$IP_Local

    Add-Type -AssemblyName System.Windows.Forms

    $LocalScripts = New-Object system.Windows.Forms.Form
    $LocalScripts.Text = "Local Scripts Selection"
    $LocalScripts.TopMost = $true
    $LocalScripts.Width = 620
    $LocalScripts.Height = 375

    $LocalScripts_Text = New-Object system.windows.Forms.TextBox
    $LocalScripts_Text.Multiline = $true
    $LocalScripts_Text.Text = "`tPlease Select which scripts to execute"
    $LocalScripts_Text.Width = 400
    $LocalScripts_Text.Height = 20
    $LocalScripts_Text.enabled = $false
    $LocalScripts_Text.location = new-object system.drawing.point(100,50)
    $LocalScripts_Text.Font = "Microsoft Sans Serif,10"
    $LocalScripts.controls.Add($LocalScripts_Text)

    $Processes_Radio = New-Object system.windows.Forms.CheckBox
    $Processes_Radio.Text = "Processes"
    $Processes_Radio.AutoSize = $true
    $Processes_Radio.Width = 95
    $Processes_Radio.Height = 20
    $Processes_Radio.location = new-object system.drawing.point(125,100)
    $Processes_Radio.Font = "Microsoft Sans Serif,10"
    $Processes_Radio.Add_Click({LocalNextEnable})
    $LocalScripts.controls.Add($Processes_Radio)
       
    $CompInfo_Radio = New-Object system.windows.Forms.CheckBox
    $CompInfo_Radio.Text = "Computer Info"
    $CompInfo_Radio.AutoSize = $true
    $CompInfo_Radio.Width = 95
    $CompInfo_Radio.Height = 20
    $CompInfo_Radio.location = new-object system.drawing.point(125,150)
    $CompInfo_Radio.Font = "Microsoft Sans Serif,10"
    $CompInfo_Radio.Add_Click({LocalNextEnable})
    $LocalScripts.controls.Add($CompInfo_Radio)
       
    $Services_Radio = New-Object system.windows.Forms.CheckBox
    $Services_Radio.Text = "Services"
    $Services_Radio.AutoSize = $true
    $Services_Radio.Width = 95
    $Services_Radio.Height = 20
    $Services_Radio.location = new-object system.drawing.point(325,100)
    $Services_Radio.Font = "Microsoft Sans Serif,10"
    $Services_Radio.Add_Click({LocalNextEnable})
    $LocalScripts.controls.Add($Services_Radio)

    $SysLog_Radio = New-Object system.windows.Forms.CheckBox
    $SysLog_Radio.Text = "System Logs"
    $SysLog_Radio.AutoSize = $true
    $SysLog_Radio.Width = 95
    $SysLog_Radio.Height = 20
    $SysLog_Radio.location = new-object system.drawing.point(325,150)
    $SysLog_Radio.Font = "Microsoft Sans Serif,10"
    $SysLog_Radio.Add_Click({LocalNextEnable})
    $LocalScripts.controls.Add($SysLog_Radio)

    $AppLog1_Radio = New-Object system.windows.Forms.CheckBox
    $AppLog1_Radio.Text = "Application Log (Warning)"
    $AppLog1_Radio.AutoSize = $true
    $AppLog1_Radio.Width = 95
    $AppLog1_Radio.Height = 20
    $AppLog1_Radio.location = new-object system.drawing.point(125,200)
    $AppLog1_Radio.Font = "Microsoft Sans Serif,10"
    $AppLog1_Radio.Add_Click({LocalNextEnable})
    $LocalScripts.controls.Add($AppLog1_Radio)

    $AppLog2_Radio = New-Object system.windows.Forms.CheckBox
    $AppLog2_Radio.Text = "Application Log (Error)"
    $AppLog2_Radio.AutoSize = $true
    $AppLog2_Radio.Width = 95
    $AppLog2_Radio.Height = 20
    $AppLog2_Radio.location = new-object system.drawing.point(325,200)
    $AppLog2_Radio.Font = "Microsoft Sans Serif,10"
    $AppLog2_Radio.Add_Click({LocalNextEnable})
    $LocalScripts.controls.Add($AppLog2_Radio)

    $Registry_Radio = New-Object system.windows.Forms.CheckBox
    $Registry_Radio.Text = "Registry Enumeration"
    $Registry_Radio.AutoSize = $true
    $Registry_Radio.Width = 95
    $Registry_Radio.Height = 20
    $Registry_Radio.location = new-object system.drawing.point(125,250)
    $Registry_Radio.Font = "Microsoft Sans Serif,10"
    $Registry_Radio.Add_Click({LocalNextEnable})
    $LocalScripts.controls.Add($Registry_Radio)

    $LocalScripts_Help = New-Object system.windows.Forms.Button
    $LocalScripts_Help.Text = "Help"
    $LocalScripts_Help.Width = 90
    $LocalScripts_Help.Height = 30
    $LocalScripts_Help.Add_Click({LocalScriptsHelp($LocalScripts.Dispose())})
    $LocalScripts_Help.location = new-object system.drawing.point(15,285)
    $LocalScripts_Help.Font = "Microsoft Sans Serif,10"
    $LocalScripts.controls.Add($LocalScripts_Help)

    $LocalScripts_Next = New-Object system.windows.Forms.Button
    $LocalScripts_Next.Text = ">> Next"
    $LocalScripts_Next.Width = 90
    $LocalScripts_Next.Height = 30
    $LocalScripts_Next.Enabled = $false
    $LocalScripts_Next.location = new-object system.drawing.point(505,285)
    $LocalScripts_Next.Font = "Microsoft Sans Serif,10"
    $LocalScripts.controls.Add($LocalScripts_Next)
    $LocalScripts_Next.Add_Click({
        If ($Processes_Radio.Checked -eq $true){
            $Process = ($(Get-Process | Get-Unique | Select ProcessName | sort ProcessName ) | Out-File -FilePath $global:Folder\$IP_Local\"Processes.txt")
            Write-Host "Processes Done"
            }
        If ($Services_Radio.Checked -eq $true){
            $Services = ($(Get-Service | Get-Unique | Sort Name | Format-Table -AutoSize) | Out-File -FilePath $global:Folder\$IP_Local\"Services.txt")
            Write-Host "Services Done"
            }
        If ($CompInfo_Radio.Checked -eq  $true){
            $CompInfo = ($(Get-ComputerInfo) | Out-File -FilePath $global:Folder\$IP_Local\"ComputerInfo.txt")
            Write-Host "Computer Info Done"
            }
        If ($AppLog1_Radio.Checked -eq $true){
            $AppLog1 = ($(Get-EventLog Application | Select EntryType, Source, Message | where EntryType -Like "Warning" | Format-Table -AutoSize) | Out-File -FilePath $global:Folder\$IP_Local\"Application_Warning.txt")
            Write-Host "Application Log 'Warning' Done"
            }
        If ($AppLog2_Radio.Checked -eq $true){
            $AppLog2 = ($(Get-EventLog Application | Select EntryType, Source, Message | where EntryType -Like "Error" | Format-Table -AutoSize) | Out-File -FilePath $global:Folder\$IP_Local\"Application_Error.txt")
            Write-Host "Application Log 'Error' Done"
            }
        If ($SysLog_Radio.Checked -eq $true){
            $SysLog = ($(Get-EventLog System | Select EntryType, Source, Message | where EntryType -Like "Warning" | Format-Table -Wrap -AutoSize) | Out-File -FilePath $global:Folder\$IP_Local\"SystemLog.txt")
            Write-Host "System Logs Done"
            }
        If ($Registry_Radio.Checked -eq $true){
            $Load_HKU = $(New-PSDrive -PSProvider Registry -Name HKU -Root HKEY_USERS)
            $HKLM_Run = ($(Get-ItemProperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Run' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
            $HKLM_RunOnce = $((Get-ItemProperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append) 
            $HKLM_Software = ($(Get-ChildItem 'HKLM:\Software' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
            $HKLM_System_Mount = ($(Get-ItemProperty 'HKLM:\System\MountedDevices' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
            #$HKLM_SAM = ($(Get-ChildItem 'HKLM:\SAM' -Recurse -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
            #$HKLM_Security = ($(Get-ChildItem 'HKLM:\Security' -Recurse -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
            #$HKLM_System_USB = ($(Get-ChildItem 'HKLM:\System\CurrentControlSet\Enum\USB' -Recurse -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
            $HKLM_CMD = ($(Get-ItemProperty 'HKLM:\Software\Microsoft\Command Processor' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
            $HKLM_CMD_64 = ($(Get-ItemProperty 'HKLM:\Software\Wow6432Node\Microsoft\Command Processor' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
            $HKCU_Run = ($(Get-ItemProperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
            $HKCU_RunOnce = ($(Get-ItemProperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
            #$HKU = ($(Get-ChildItem 'HKU:' -Recurse | where { $_.Name -match 'Password' } -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)

            $HKLM_Run, $HKLM_RunOnce, $HKLM_Software, $HKLM_System_Mount, $HKLM_CMD, $HKLM_CMD_64, $HKCU_Run, $HKCU_RunOnce
            #$HKLM_System_USB
            #$HKU
            #$HKLM_Security                                     Need to fix permissions issue to have access to these specific keys
            #$HKLM_SAM
            Write-Host "Registry Done"
        }
        Write-Host "Completed Everything"
        FinishMenu($LocalScripts.Dispose())
    })

    $LocalScripts_Prev = New-Object system.windows.Forms.Button
    $LocalScripts_Prev.Text = "Prev <<"
    $LocalScripts_Prev.Width = 90
    $LocalScripts_Prev.Height = 30
    $LocalScripts_Prev.Add_Click({LocalDomainSelect($LocalScripts.Dispose())})
    $LocalScripts_Prev.location = new-object system.drawing.point(400,285)
    $LocalScripts_Prev.Font = "Microsoft Sans Serif,10"
    $LocalScripts.controls.Add($LocalScripts_Prev)

    Function LocalNextEnable {
        If ($Processes_Radio.Checked -or $Services_Radio.Checked -or $CompInfo_Radio.Checked -or $AppLog1_Radio.Checked -or $AppLog2_Radio.Checked -or $SysLog_Radio.Checked -or $Registry_Radio.Checked -eq $true) {
            $LocalScripts_Next.Enabled = $true
        }
        Else {$LocalScripts_Next.Enabled = $false}
    }

    [void]$LocalScripts.ShowDialog()
    $LocalScripts.Dispose()
}

Function Domain_Scripts_Menu {

    Add-Type -AssemblyName System.Windows.Forms

    $Domain_Start = New-Object system.Windows.Forms.Form
    $Domain_Start.Text = "Domain Auto/Manual Enumeration"
    $Domain_Start.TopMost = $true
    $Domain_Start.Width = 620
    $Domain_Start.Height = 375
    $Domain_start.StartPosition = "CenterScreen"

    $Domain_Textbox = New-Object system.windows.Forms.TextBox
    $Domain_Textbox.Multiline = $true
    $Domain_Textbox.Text = "Please select Automatic or Manual Enumeration"
    $Domain_Textbox.Width = 350
    $Domain_Textbox.Height = 20
    $Domain_Textbox.Enabled = $false
    $Domain_Textbox.location = new-object system.drawing.point(120,40)
    $Domain_Textbox.Font = "Microsoft Sans Serif,10"
    $Domain_Start.controls.Add($Domain_Textbox)

    $Domain_Next = New-Object system.windows.Forms.Button
    $Domain_Next.Text = ">> Next"
    $Domain_Next.Width = 90
    $Domain_Next.Height = 30
    $Domain_Next.Enabled = $false
    $Domain_Next.location = new-object system.drawing.point(505,285)
    $Domain_Next.Font = "Microsoft Sans Serif,10"
    $Domain_Start.controls.Add($Domain_Next)
    $Domain_Next.Add_Click({
        if ($Domain_Automatic.Checked -eq $true){
            $Domain_Manual.Checked -eq $false
            Write-Host "Automatic Enumeration Selected"
            Domain_Automatic_Enumeration($Domain_Start.Dispose())
            }
        if ($Domain_Manual.Checked -eq $true){
            $Domain_Automatic.Checked -eq $false
            Write-Host "Manual Enumeration Selected"
            Domain_Manual_Enumeration($Domain_Start.Dispose())
            }
        })

    $Domain_Prev = New-Object system.windows.Forms.Button
    $Domain_Prev.Text = "Prev <<"
    $Domain_Prev.Width = 90
    $Domain_Prev.Height = 30
    $Domain_Prev.location = new-object system.drawing.point(400,285)
    $Domain_Prev.Font = "Microsoft Sans Serif,10"
    $Domain_Prev.Add_Click({
        $Domain_Automatic.Checked -eq $false
        $Domain_Manual.Checked -eq $false
        LocalDomainSelect($Domain_Start.Dispose())})
    $Domain_Start.controls.Add($Domain_Prev)

    $Domain_Help = New-Object system.windows.Forms.Button
    $Domain_Help.Text = "Help"
    $Domain_Help.Width = 90
    $Domain_Help.Height = 30
    $Domain_Help.location = new-object system.drawing.point(15,285)
    $Domain_Help.Font = "Microsoft Sans Serif,10"
    $Domain_Help.Add_Click({Domain_Help_Menu($Domain_Start.Dispose())})
    $Domain_Start.controls.Add($Domain_Help)

    $Domain_Automatic = New-Object system.windows.Forms.RadioButton
    $Domain_Automatic.Text = "Automatic Enumeration"
    $Domain_Automatic.AutoSize = $true
    $Domain_Automatic.Width = 104
    $Domain_Automatic.Height = 20
    $Domain_Automatic.Add_Click({
        $Domain_Next.Enabled = $true
        })
    $Domain_Automatic.location = new-object system.drawing.point(165,125)
    $Domain_Automatic.Font = "Microsoft Sans Serif,10"
    $Domain_Start.controls.Add($Domain_Automatic)

    $Domain_Manual = New-Object system.windows.Forms.RadioButton
    $Domain_Manual.Text = "Manual Enumeration"
    $Domain_Manual.AutoSize = $true
    $Domain_Manual.Width = 104
    $Domain_Manual.Height = 20
    $Domain_Manual.Add_Click({
        $Domain_Next.Enabled = $true
        })
    $Domain_Manual.location = new-object system.drawing.point(165,200)
    $Domain_Manual.Font = "Microsoft Sans Serif,10"
    $Domain_Start.controls.Add($Domain_Manual)

    [void]$Domain_Start.ShowDialog()
    $Domain_Start.Dispose()


}

Function Domain_Help_Menu {
    Add-Type -AssemblyName System.Windows.Forms

    $DomainScriptsHelp = New-Object system.Windows.Forms.Form
    $DomainScriptsHelp.Text = "Domain Enumeration Help"
    $DomainScriptsHelp.TopMost = $true
    $DomainScriptsHelp.Width = 620
    $DomainScriptsHelp.Height = 375
    $DomainScriptsHelp.StartPosition = "CenterScreen"

    $Domain_Help_Textbox = New-Object system.windows.Forms.TextBox
    $Domain_Help_Textbox.Multiline = $true
    $Domain_Help_Textbox.Text = "Automatic Enumeration will scan the entire network of the connected machine for live hosts in order to execute collections from scripts in the next menu.`r`n`r`n`r`nManual enumeration takes networks from manually placed document.`r`n`r`n`r`nDocument is stored in execution folder and named `"LivePCs.txt`""
    $Domain_Help_Textbox.Width = 450
    $Domain_Help_Textbox.Height = 250
    $Domain_Help_Textbox.Enabled = $false
    $Domain_Help_Textbox.location = new-object system.drawing.point(75,15)
    $Domain_Help_Textbox.Font = "Microsoft Sans Serif,10"
    $DomainScriptsHelp.controls.Add($Domain_Help_Textbox)

    $Domain_Help_Close = New-Object system.windows.Forms.Button
    $Domain_Help_Close.Text = "Close"
    $Domain_Help_Close.Width = 90
    $Domain_Help_Close.Height = 30
    $Domain_Help_Close.Add_Click({Domain_Scripts_Menu($DomainScriptsHelp.Dispose())})
    $Domain_Help_Close.location = new-object system.drawing.point(15,285)
    $Domain_Help_Close.Font = "Microsoft Sans Serif,10"
    $DomainScriptsHelp.controls.Add($Domain_Help_Close)

    [void]$DomainScriptsHelp.ShowDialog()
    $DomainScriptsHelp.Dispose()
    
}

Function Domain_Automatic_Enumeration {

    Add-Type -assembly System.Windows.Forms
    
    $DomainScripts = New-Object system.Windows.Forms.Form
    $DomainScripts.Text = "Domain Automatic Enumeration"
    $DomainScripts.TopMost = $true
    $DomainScripts.Width = 620
    $DomainScripts.Height = 375
    $DomainScripts.StartPosition = "CenterScreen"

    $DomainLabel = New-Object System.Windows.Forms.Label
    $DomainLabel.Text = "Scanning Computers Please Wait. . . "
    $DomainLabel.Left = 5
    $DomainLabel.Top = 10
    $DomainLabel.Width = 620 - 50
    $DomainLabel.Height = 30
    $DomainScripts.Controls.Add($DomainLabel)

    $ProgressBar = New-Object System.Windows.Forms.ProgressBar
    $ProgressBar.Name = "ComputerScannedProgressBar"
    $ProgressBar.Value = 0
    $ProgressBar.Style = "Continuous"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 620 - 60
    $System_Drawing_Size.Height = 25
    $ProgressBar.Size = $System_Drawing_Size
    $ProgressBar.Left = 5
    $ProgressBar.Top = 40
    $ProgressBar.BackColor='Gray'
    $ProgressBar.ForeColor='Blue'
    $DomainScripts.Controls.Add($ProgressBar)

    $DomainScripts.Show() | Out-Null
    $DomainScripts.Focus() | Out-Null
    $DomainLabel.Text = "Scanning Computers Please Wait. . . "
    $DomainScripts.Refresh()
    #Start-Sleep -Seconds 1

$MaxThreads = 15
$i = 0
$NIC = Get-WmiObject -Computer $env:COMPUTERNAME -Class "Win32_NetworkAdapterConfiguration" | Where-Object {$_.defaultIPGateway -ne $null}
$LocalIP = $NIC.IpAddress | Select-Object -First 1
$LocalSN = $NIC.IPSubnet | Select-Object -First 1
$LocalIP_1stOct = $LocalIP.Split(".") | Select -First 1
$LocalIP_2ndOct = $LocalIP.Split(".") | Select -First 1 -Skip 1
$LocalIP_3rdOct = $LocalIP.Split(".") | Select -First 1 -Skip 2
$LocalIP_4thOct = $LocalIP.Split(".") | Select -First 1 -Skip 3
#$LocalSN
#Write-Host "IPAddress is $LocalIP"
#Write-Host "Final Subnet is $LocalSN"
    if ($LocalSN -eq "255.255.255.252"){
        $MaxThreads = 18
        $i = 0
        Write-Host "Subnet = 255.255.255.252" 
        if ([int]$LocalIP_4thdOct -lt 255 -and [int]$LocalIP_4thOct -gt 252){
            foreach ($a in 252..255){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 252 -and [int]$LocalIP_4thOct -gt 248){
            foreach ($a in 248..252){
             While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = Start-Job -ScriptBlock {$(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)}
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 248 -and [int]$LocalIP_4thOct -gt 244){
            foreach ($a in 244..248){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 244 -and [int]$LocalIP_4thOct -gt 240){
            foreach ($a in 240..244){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 240 -and [int]$LocalIP_4thOct -gt 236){
            foreach ($a in 236..240){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 236 -and [int]$LocalIP_4thOct -gt 232){
            foreach ($a in 232..236){
             While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 232 -and [int]$LocalIP_4thOct -gt 228){
            foreach ($a in 228..232){
             While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 228 -and [int]$LocalIP_4thOct -gt 224){
            foreach ($a in 224..228){
             While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 224 -and [int]$LocalIP_4thOct -gt 220){
            foreach ($a in 220..224){
             While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 220 -and [int]$LocalIP_4thOct -gt 216){
            foreach ($a in 216..220){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 216 -and [int]$LocalIP_4thOct -gt 212){
            foreach ($a in 212..216){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 212 -and [int]$LocalIP_4thOct -gt 208){
            foreach ($a in 208..212){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 208 -and [int]$LocalIP_4thOct -gt 204){
            foreach ($a in 204..208){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 204 -and [int]$LocalIP_4thOct -gt 200){
            foreach ($a in 200..204){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 200 -and [int]$LocalIP_4thOct -gt 196){
            foreach ($a in 196..200){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 196 -and [int]$LocalIP_4thOct -gt 192){
            foreach ($a in 192..196){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 192 -and [int]$LocalIP_4thOct -gt 188){
            foreach ($a in 188..192){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 188 -and [int]$LocalIP_4thOct -gt 184){
            foreach ($a in 184..188){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 184 -and [int]$LocalIP_4thOct -gt 180){
            foreach ($a in 180..184){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 180 -and [int]$LocalIP_4thOct -gt 176){
            foreach ($a in 176..180){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 176 -and [int]$LocalIP_4thOct -gt 172){
            foreach ($a in 172..176){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 172 -and [int]$LocalIP_4thOct -gt 168){
            foreach ($a in 168..172){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 168 -and [int]$LocalIP_4thOct -gt 164){
            foreach ($a in 164..168){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 164 -and [int]$LocalIP_4thOct -gt 160){
            foreach ($a in 160..164){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 160 -and [int]$LocalIP_4thOct -gt 156){
            foreach ($a in 156..160){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 156 -and [int]$LocalIP_4thOct -gt 152){
            foreach ($a in 152..156){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 152 -and [int]$LocalIP_4thOct -gt 148){
            foreach ($a in 148..152){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 148 -and [int]$LocalIP_4thOct -gt 144){
            foreach ($a in 144..148){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 144 -and [int]$LocalIP_4thOct -gt 140){
            foreach ($a in 140..148){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 140 -and [int]$LocalIP_4thOct -gt 136){
            foreach ($a in 136..140){
            WWhile (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 136 -and [int]$LocalIP_4thOct -gt 132){
            foreach ($a in 132..136){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 132 -and [int]$LocalIP_4thOct -gt 128){
            foreach ($a in 128..132){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 128 -and [int]$LocalIP_4thOct -gt 124){
            foreach ($a in 124..128){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 124 -and [int]$LocalIP_4thOct -gt 120){
            foreach ($a in 120..124){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 120 -and [int]$LocalIP_4thOct -gt 116){
            foreach ($a in 116..120){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 116 -and [int]$LocalIP_4thOct -gt 112){
            foreach ($a in 112..116){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 112 -and [int]$LocalIP_4thOct -gt 108){
            foreach ($a in 108..112){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 108 -and [int]$LocalIP_4thOct -gt 104){
            foreach ($a in 104..108){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 104 -and [int]$LocalIP_4thOct -gt 100){
            foreach ($a in 100..104){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 100 -and [int]$LocalIP_4thOct -gt 96){
            foreach ($a in 96..100){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 96 -and [int]$LocalIP_4thOct -gt 92){
            foreach ($a in 92..96){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 92 -and [int]$LocalIP_4thOct -gt 88){
            foreach ($a in 88..92){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 88 -and [int]$LocalIP_4thOct -gt 84){
            foreach ($a in 84..88){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 84 -and [int]$LocalIP_4thOct -gt 80){
            foreach ($a in 80..84){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 80 -and [int]$LocalIP_4thOct -gt 76){
            foreach ($a in 76..80){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 76 -and [int]$LocalIP_4thOct -gt 72){
            foreach ($a in 72..76){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 72 -and [int]$LocalIP_4thOct -gt 68){
            foreach ($a in 68..72){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 68 -and [int]$LocalIP_4thOct -gt 64){
            foreach ($a in 64..68){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 64 -and [int]$LocalIP_4thOct -gt 60){
            foreach ($a in 60..64){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 60 -and [int]$LocalIP_4thOct -gt 56){
            foreach ($a in 56..60){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 56 -and [int]$LocalIP_4thOct -gt 52){
            foreach ($a in 52..56){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 52 -and [int]$LocalIP_4thOct -gt 48){
            foreach ($a in 48..52){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 48 -and [int]$LocalIP_4thOct -gt 44){
            foreach ($a in 44..48){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 44 -and [int]$LocalIP_4thOct -gt 40){
            foreach ($a in 40..44){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 40 -and [int]$LocalIP_4thOct -gt 36){
            foreach ($a in 36..40){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 36 -and [int]$LocalIP_4thOct -gt 32){
            foreach ($a in 32..36){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 32 -and [int]$LocalIP_4thOct -gt 28){
            foreach ($a in 28..32){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 28 -and [int]$LocalIP_4thOct -gt 24){
            foreach ($a in 24..28){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 24 -and [int]$LocalIP_4thOct -gt 20){
            foreach ($a in 20..24){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 20 -and [int]$LocalIP_4thOct -gt 16){
            foreach ($a in 16..20){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 16 -and [int]$LocalIP_4thOct -gt 12){
            foreach ($a in 12..16){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 12 -and [int]$LocalIP_4thOct -gt 8){
            foreach ($a in 8..12){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 8 -and [int]$LocalIP_4thOct -gt 4){
            foreach ($a in 4..8){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 4 -and [int]$LocalIP_4thOct -gt 0){
            foreach ($a in 0..4){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }
    }

    if ($LocalSN -eq "255.255.255.248"){
        $MaxThreads = 18
        $i = 0
        Write-Host "Subnet = 255.255.255.248" 
        if ([int]$LocalIP_4thdOct -lt 255 -and [int]$LocalIP_4thOct -gt 248){
            foreach ($a in 248..255){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 248 -and [int]$LocalIP_4thOct -gt 240){
            foreach ($a in 240..248){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 240 -and [int]$LocalIP_4thOct -gt 232){
            foreach ($a in 232..240){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 232 -and [int]$LocalIP_4thOct -gt 224){
            foreach ($a in 224..232){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 224 -and [int]$LocalIP_4thOct -gt 216){
            foreach ($a in 216..224){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 216 -and [int]$LocalIP_4thOct -gt 208){
            foreach ($a in 208..216){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 208 -and [int]$LocalIP_4thOct -gt 200){
            foreach ($a in 200..208){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 200 -and [int]$LocalIP_4thOct -gt 192){
            foreach ($a in 192..200){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 192 -and [int]$LocalIP_4thOct -gt 184){
            foreach ($a in 184..192){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 184 -and [int]$LocalIP_4thOct -gt 176){
            foreach ($a in 176..184){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 176 -and [int]$LocalIP_4thOct -gt 168){
            foreach ($a in 168..176){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 168 -and [int]$LocalIP_4thOct -gt 160){
            foreach ($a in 160..168){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 160 -and [int]$LocalIP_4thOct -gt 152){
            foreach ($a in 152..160){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 152 -and [int]$LocalIP_4thOct -gt 144){
            foreach ($a in 144..152){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 144 -and [int]$LocalIP_4thOct -gt 136){
            foreach ($a in 136..144){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 136 -and [int]$LocalIP_4thOct -gt 128){
            foreach ($a in 128..136){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 128 -and [int]$LocalIP_4thOct -gt 120){
            foreach ($a in 120..128){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 120 -and [int]$LocalIP_4thOct -gt 112){
            foreach ($a in 112..120){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 112 -and [int]$LocalIP_4thOct -gt 104){
            foreach ($a in 104..112){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 104 -and [int]$LocalIP_4thOct -gt 96){
            foreach ($a in 96..104){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 96 -and [int]$LocalIP_4thOct -gt 88){
            foreach ($a in 88..96){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 88 -and [int]$LocalIP_4thOct -gt 80){
            foreach ($a in 80..88){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 80 -and [int]$LocalIP_4thOct -gt 72){
            foreach ($a in 72..80){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 72 -and [int]$LocalIP_4thOct -gt 64){
            foreach ($a in 64..72){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 64 -and [int]$LocalIP_4thOct -gt 56){
            foreach ($a in 56..64){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 56 -and [int]$LocalIP_4thOct -gt 48){
            foreach ($a in 48..56){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 48 -and [int]$LocalIP_4thOct -gt 40){
            foreach ($a in 40..48){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 40 -and [int]$LocalIP_4thOct -gt 32){
            foreach ($a in 32..40){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 32 -and [int]$LocalIP_4thOct -gt 24){
            foreach ($a in 24..32){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 24 -and [int]$LocalIP_4thOct -gt 16){
            foreach ($a in 16..24){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 16 -and [int]$LocalIP_4thOct -gt 8){
            foreach ($a in 8..16){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 8 -and [int]$LocalIP_4thOct -gt 0){
            foreach ($a in 0..8){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }
    }

    if ($LocalSN -eq "255.255.255.240"){
    Write-Host "Subnet = 255.255.255.240" 
        $MaxThreads = 18
        $i = 0
        if ([int]$LocalIP_4thdOct -lt 255 -and [int]$LocalIP_4thOct -gt 240){
                foreach ($a in 240..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }

        if ([int]$LocalIP_4thdOct -lt 240 -and [int]$LocalIP_4thOct -gt 224){
                foreach ($a in 224..240){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                    $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                    Start-Job {$Test_Connection} | Out-Null
                    if ($Test_Connection -eq $true){
                        "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                        #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                        }
                    }
                }

        if ([int]$LocalIP_4thdOct -lt 224 -and [int]$LocalIP_4thOct -gt 208){
            foreach ($a in 208..224){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 208 -and [int]$LocalIP_4thOct -gt 192){
            foreach ($a in 192..208){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 192 -and [int]$LocalIP_4thOct -gt 176){
            foreach ($a in 176..192){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 176 -and [int]$LocalIP_4thOct -gt 160){
            foreach ($a in 160..176){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 160 -and [int]$LocalIP_4thOct -gt 144){
            foreach ($a in 144..160){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 144 -and [int]$LocalIP_4thOct -gt 128){
            foreach ($a in 128..144){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 128 -and [int]$LocalIP_4thOct -gt 112){
            foreach ($a in 112..128){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 112 -and [int]$LocalIP_4thOct -gt 96){
            foreach ($a in 96..112){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 96 -and [int]$LocalIP_4thOct -gt 80){
            foreach ($a in 80..96){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 80 -and [int]$LocalIP_4thOct -gt 64){
            foreach ($a in 64..80){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 64 -and [int]$LocalIP_4thOct -gt 48){
            foreach ($a in 48..64){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 48 -and [int]$LocalIP_4thOct -gt 32){
            foreach ($a in 32..48){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 32 -and [int]$LocalIP_4thOct -gt 16){
            foreach ($a in 16..32){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 16 -and [int]$LocalIP_4thOct -gt 0){
            foreach ($a in 0..16){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }
    }

    if ($LocalSN -eq "255.255.255.224"){
        $MaxThreads = 18
        $i = 0
        Write-Host "Subnet = 255.255.255.224" 
        if ([int]$LocalIP_4thdOct -lt 255 -and [int]$LocalIP_4thOct -gt 224){
            foreach ($a in 224..255){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 32) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 32"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }
        
        if ([int]$LocalIP_4thdOct -lt 224 -and [int]$LocalIP_4thOct -gt 192){
            foreach ($a in 192..224){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 32) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 32"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }
    
        if ([int]$LocalIP_4thdOct -lt 192 -and [int]$LocalIP_4thOct -gt 160){
            foreach ($a in 160..192){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 32) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 32"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }
    
        if ([int]$LocalIP_4thdOct -lt 160 -and [int]$LocalIP_4thOct -gt 128){
            foreach ($a in 128..160){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 32) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 32"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }
    
        if ([int]$LocalIP_4thdOct -lt 128 -and [int]$LocalIP_4thOct -gt 96){
            foreach ($a in 96..128){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 32) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 32"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 96 -and [int]$LocalIP_4thOct -gt 64){
            foreach ($a in 64..96){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 32) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 32"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 64 -and [int]$LocalIP_4thOct -gt 32){
            foreach ($a in 32..64){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 32) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 32"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 32 -and [int]$LocalIP_4thOct -gt 0){
            foreach ($a in 0..32){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 32) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 32"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }        
    }
    
    if ($LocalSN -eq "255.255.255.192"){
        $MaxThreads = 18
        $i = 0
        Write-Host "Subnet = 255.255.255.192" 
        if ([int]$LocalIP_4thdOct -lt 255 -and [int]$LocalIP_4thOct -gt 224){
            foreach ($a in 224..255){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 64) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 64"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 224 -and [int]$LocalIP_4thOct -gt 192){
            foreach ($a in 192..224){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 64) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 64"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 192 -and [int]$LocalIP_4thOct -gt 160){
            foreach ($a in 160..192){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 64) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 64"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }
    
        if ([int]$LocalIP_4thdOct -lt 160 -and [int]$LocalIP_4thOct -gt 128){
            foreach ($a in 128..160){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 64) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 64"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 128 -and [int]$LocalIP_4thOct -gt 96){
            foreach ($a in 96..128){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 64) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 64"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 96 -and [int]$LocalIP_4thOct -gt 64){
            foreach ($a in 64..96){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 64) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 64"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 64 -and [int]$LocalIP_4thOct -gt 32){
            foreach ($a in 32..64){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 64) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 64"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }

        if ([int]$LocalIP_4thdOct -lt 32 -and [int]$LocalIP_4thOct -gt 0){
            foreach ($a in 0..32){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 64) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 64"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }            
    }

    if ($LocalSN -eq "255.255.255.128"){
        $MaxThreads = 18
        $i = 0
        Write-Host "Subnet = 255.255.255.128" 
        if ([int]$LocalIP_4thdOct -lt 255 -and [int]$LocalIP_4thOct -gt 128){
            foreach ($a in 128..255){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 128) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 128"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }
        
        if ([int]$LocalIP_4thdOct -lt 128 -and [int]$LocalIP_4thOct -gt 0){
            foreach ($a in 0..128){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 128) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 128"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }    
    }    
           
    if ($LocalSN -eq "255.255.255.0"){
        $MaxThreads = 18
        $i = 0
        Write-Host "Subnet is 255.255.255.0"
        if ([int]$LocalIP_4thdOct -lt 255 -and [int]$LocalIP_4thOct -gt 0){
            foreach ($a in 0..255){
            While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 256) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 256"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
            $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
            Start-Job {$Test_Connection} | Out-Null
            if ($Test_Connection -eq $true){
                "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                }
            }
        }    
    }
 
    #Need To Complete   
    if ($LocalSN -eq "255.255.254.0"){<#
        $MaxThreads = 18
        $i = 0
        Write-Host "Subnet = 255.255.254.0" 
        if ([int]$LocalIP_4thOct -eq 0 -and [int]$LocalIP_3rdOct -lt 255 -and [int]$LocalIP_3rdOct -gt 254){
            foreach ($b in 254..255){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                    #Write-Host "Too many jobs open"
                    Start-Sleep -Milliseconds 125
                    }
                $i++
                Write-Progress -Activity "Scanning Network... " -Status "Scanned: $a of 512" -PercentComplete (($i / 512 ) * 100)
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_4thOct -eq 0 -and [int]$LocalIP_3rdOct -lt 254 -and [int]$LocalIP_3rdOct -gt 253){
            foreach ($b in 253..254){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                    #Write-Host "Too many jobs open"
                    Start-Sleep -Milliseconds 125
                    }
                $i++
                Write-Progress -Activity "Scanning Network... " -Status "Scanned: $a of 512" -PercentComplete (($i / 512 ) * 100)
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
        
        if ([int]$LocalIP_4thOct -eq 0 -and [int]$LocalIP_3rdOct -lt 253 -and [int]$LocalIP_3rdOct -gt 252){
            foreach ($b in 252..253){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                    #Write-Host "Too many jobs open"
                    Start-Sleep -Milliseconds 125
                    }
                $i++
                Write-Progress -Activity "Scanning Network... " -Status "Scanned: $a of 512" -PercentComplete (($i / 512 ) * 100)
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$LocalIP_3rdOct.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }    
    
 #>   }
    #Need To Complete
    if ($LocalSN -eq "255.255.252.0"){Write-Host "Subnet = 255.255.252.0" }
    
    if ($LocalSN -eq "255.255.248.0"){
        $MaxThreads = 18
        $i = 0
        Write-Host "Subnet = 255.255.248.0" 
        if ([int]$LocalIP_3rdOct -lt 255 -and [int]$LocalIP_3rdOct -gt 248 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 248..255){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 248 -and [int]$LocalIP_3rdOct -gt 240 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 240..248){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 240 -and [int]$LocalIP_3rdOct -gt 232 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 232..240){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 232 -and [int]$LocalIP_3rdOct -gt 224 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 224..232){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 224 -and [int]$LocalIP_3rdOct -gt 216 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 216..224){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 216 -and [int]$LocalIP_3rdOct -gt 208 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 208..216){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 208 -and [int]$LocalIP_3rdOct -gt 200 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 200..208){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 200 -and [int]$LocalIP_3rdOct -gt 192 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 192..200){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 192 -and [int]$LocalIP_3rdOct -gt 184 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 184..192){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 184 -and [int]$LocalIP_3rdOct -gt 176 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 176..184){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 176 -and [int]$LocalIP_3rdOct -gt 168 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 168..176){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 168 -and [int]$LocalIP_3rdOct -gt 160 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 160..168){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 160 -and [int]$LocalIP_3rdOct -gt 152 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 152..160){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 152 -and [int]$LocalIP_3rdOct -gt 144 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 144..152){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 144 -and [int]$LocalIP_3rdOct -gt 136 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 144..136){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 136 -and [int]$LocalIP_3rdOct -gt 128 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 128..136){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 128 -and [int]$LocalIP_3rdOct -gt 120 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 120..128){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 120 -and [int]$LocalIP_3rdOct -gt 112 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 112..120){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 112 -and [int]$LocalIP_3rdOct -gt 104 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 104..112){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
    
        if ([int]$LocalIP_3rdOct -lt 104 -and [int]$LocalIP_3rdOct -gt 96 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 96..104){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
    
        if ([int]$LocalIP_3rdOct -lt 96 -and [int]$LocalIP_3rdOct -gt 88 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 88..96){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
    
        if ([int]$LocalIP_3rdOct -lt 88 -and [int]$LocalIP_3rdOct -gt 80 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 80..88){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 80 -and [int]$LocalIP_3rdOct -gt 72 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 72..80){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 72 -and [int]$LocalIP_3rdOct -gt 64 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 64..72){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 64 -and [int]$LocalIP_3rdOct -gt 56 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 56..64){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 56 -and [int]$LocalIP_3rdOct -gt 48 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 48..56){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 48 -and [int]$LocalIP_3rdOct -gt 40 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 40..48){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 40 -and [int]$LocalIP_3rdOct -gt 32 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 32..40){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 32 -and [int]$LocalIP_3rdOct -gt 24 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 24..32){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
        
        if ([int]$LocalIP_3rdOct -lt 24 -and [int]$LocalIP_3rdOct -gt 16 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 16..24){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 16 -and [int]$LocalIP_3rdOct -gt 8 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 8..16){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 8 -and [int]$LocalIP_3rdOct -gt 0 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 0..88){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 2048) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 2048"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
    }
    
    if ($LocalSN -eq "255.255.240.0"){
        $MaxThreads = 18
        $i = 0
        Write-Host "Subnet = 255.255.240.0" 
        if ([int]$LocalIP_3rdOct -lt 255 -and [int]$LocalIP_3rdOct -gt 240 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 240..255){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 240 -and [int]$LocalIP_3rdOct -gt 224 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 224..240){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 224 -and [int]$LocalIP_3rdOct -gt 208 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 208..224){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 208 -and [int]$LocalIP_3rdOct -gt 192 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 192..208){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 192 -and [int]$LocalIP_3rdOct -gt 176 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 176..192){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 176 -and [int]$LocalIP_3rdOct -gt 160 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 160..176){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 160 -and [int]$LocalIP_3rdOct -gt 144 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 144..160){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 144 -and [int]$LocalIP_3rdOct -gt 128 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 128..144){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 128 -and [int]$LocalIP_3rdOct -gt 96 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 96..128){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 96 -and [int]$LocalIP_3rdOct -gt 80 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 80..96){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 80 -and [int]$LocalIP_3rdOct -gt 64 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 64..80){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 64 -and [int]$LocalIP_3rdOct -gt 48 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 48..64){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 48 -and [int]$LocalIP_3rdOct -gt 32 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 32..48){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 32 -and [int]$LocalIP_3rdOct -gt 16 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 16..32){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 16 -and [int]$LocalIP_3rdOct -gt 0 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 0..32){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 4096) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 4096"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
    }
    
    if ($LocalSN -eq "255.255.224.0"){
        $MaxThreads = 18
        $i = 0
        Write-Host "Subnet = 255.255.224.0" 
        if ([int]$LocalIP_3rdOct -lt 255 -and [int]$LocalIP_3rdOct -gt 224 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 224..255){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8192) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8192"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 224 -and [int]$LocalIP_3rdOct -gt 192 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 192..224){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8192) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8192"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
    
        if ([int]$LocalIP_3rdOct -lt 192 -and [int]$LocalIP_3rdOct -gt 160 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 160..192){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8192) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8192"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
        
        if ([int]$LocalIP_3rdOct -lt 160 -and [int]$LocalIP_3rdOct -gt 128 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 128..160){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8192) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8192"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }    

        if ([int]$LocalIP_3rdOct -lt 128 -and [int]$LocalIP_3rdOct -gt 96 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 96..128){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8192) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8192"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 96 -and [int]$LocalIP_3rdOct -gt 64 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 64..96){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8192) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8192"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 64 -and [int]$LocalIP_3rdOct -gt 32 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 32..64){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8192) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8192"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 32 -and [int]$LocalIP_3rdOct -gt 0 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 0..32){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 8192) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 8192"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
    }
    
    if ($LocalSN -eq "255.255.192.0"){
        $MaxThreads = 18
        $i = 0
        Write-Host "Subnet = 255.255.192.0" 
        if ([int]$LocalIP_3rdOct -lt 255 -and [int]$LocalIP_3rdOct -gt 192 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 192..255){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16384) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16384"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 192 -and [int]$LocalIP_3rdOct -gt 128 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 128..192){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16384) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16384"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }

        if ([int]$LocalIP_3rdOct -lt 128 -and [int]$LocalIP_3rdOct -gt 64 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 64..128){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16384) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16384"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
        
        if ([int]$LocalIP_3rdOct -lt 64 -and [int]$LocalIP_3rdOct -gt 0 -and [int]$LocalIP_4thOct -eq 0){
            foreach($b in 0..64){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 16384) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 16384"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
    }
    
    if ($LocalSN -eq "255.255.128.0"){
        $MaxThreads = 25
        $i = 0
        Write-Host "Subnet = 255.255.128.0" 
        if ([int]$LocalIP_4thOct -eq 0 -and [int]$LocalIP_3rdOct -lt 255 -and [int]$LocalIP_3rdOct -gt 128){
            foreach ($b in 128..255){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 32768) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 32768"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }  
        
        if ([int]$LocalIP_4thOct -eq 0 -and [int]$LocalIP_3rddOct -lt 128 -and [int]$LocalIP_3rdOct -gt 0){
            foreach ($b in 0..128){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 32768) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 32768"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }
        }
    }

    if ($LocalSN -eq "255.255.0.0"){
        $MaxThreads = 30
        $i = 0
        Write-Host "Subnet = 255.255.0.0"
        if ([int]$LocalIP_4thdOct -eq 0 -and [int]$LocalIP_3rdOct -eq 0){
            foreach($b in 0..255){
                foreach ($a in 0..255){
                While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads) {
                Write-Host "Too many jobs open"
                Start-Sleep -Milliseconds 125
            }
            $i++
            [int]$Percentage = ($i / 65536) * 100
            $ProgressBar.Value = $Percentage
            $DomainLabel.Text = "Scanning Network... Scanned: $a of 65536"
            $DomainScripts.Refresh()
            Start-Sleep -Milliseconds 200
                $Test_Connection = $(Test-Connection "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" -Delay 1 -BufferSize 16 -Count 1 -Quiet)
                Start-Job {$Test_Connection} | Out-Null
                if ($Test_Connection -eq $true){
                    "$LocalIP_1stOct.$LocalIP_2ndOct.$b.$a" | Out-File -FilePath "$global:Folder\LivePCs.txt" -Append
                    #Write-Host "$global:Folder\LivePCs.txt" IP Added"
                    }
                }
            }    
        }
    }

    if ([int]$Percentage -ge 100){
    Domain_Scripts_Main($DomainScripts.Dispose())
    }
    Domain_Scripts_Main($DomainScripts.Dispose())
}

Function Domain_Manual_Enumeration {
    Add-Type -AssemblyName System.Windows.Forms

    $Domain_Manual = New-Object system.Windows.Forms.Form
    $Domain_Manual.Text = "Domain Manual Enumeration"
    $Domain_Manual.TopMost = $true
    $Domain_Manual.Width = 620
    $Domain_Manual.Height = 375
    $Domain_Manual.StartPosition = "CenterScreen"

    $DM_Textbox = New-Object system.windows.Forms.TextBox
    $DM_Textbox.Multiline = $true
    $DM_Textbox.Text = "This will pull a list of computers from file located at: '$global:Folder' `r`n`r`n`r`nPlease ensure file is present.`r`n`r`n`r`nSee Help for assistance"
    $DM_Textbox.Width = 500
    $DM_Textbox.Height = 150
    $DM_Textbox.enabled = $false
    $DM_Textbox.location = new-object system.drawing.point(50,32)
    $DM_Textbox.Font = "Microsoft Sans Serif,10"
    $Domain_Manual.controls.Add($DM_Textbox)

    $DM_Next = New-Object system.windows.Forms.Button
    $DM_Next.Text = ">> Next"
    $DM_Next.Width = 90
    $DM_Next.Height = 30
    $DM_Next.enabled = $true
    $DM_Next.Add_Click({Domain_Scripts_Main($Domain_Manual.Dispose())})  
    $DM_Next.location = new-object system.drawing.point(505,285)
    $DM_Next.Font = "Microsoft Sans Serif,10"
    $Domain_Manual.controls.Add($DM_Next)

    $DM_Prev = New-Object system.windows.Forms.Button
    $DM_Prev.Text = "Prev <<"
    $DM_Prev.Width = 90
    $DM_Prev.Height = 30
    $DM_Prev.location = new-object system.drawing.point(400,285)
    $DM_Prev.Font = "Microsoft Sans Serif,10"
    $Domain_Manual.controls.Add($DM_Prev)

    $DM_Help = New-Object system.windows.Forms.Button
    $DM_Help.Text = "Help"
    $DM_Help.Width = 90
    $DM_Help.Height = 30
    $DM_Help.location = new-object system.drawing.point(15,285)
    $DM_Help.Font = "Microsoft Sans Serif,10"
    $Domain_Manual.controls.Add($DM_Help)

    [void]$Domain_Manual.ShowDialog()
    $Domain_Manual.Dispose()
}

Function Domain_Scripts_Credentials {
    #Implementation to come in the future
    #Will allow the user to select several authentication methods
    #username/password, pki, or kerberos
}

Function Domain_Scripts_Main {
    
    Add-Type -AssemblyName System.Windows.Forms

    $Domain_Scripts_Main = New-Object system.Windows.Forms.Form
    $Domain_Scripts_Main.Text = "Domain Scripts Selection"
    $Domain_Scripts_Main.TopMost = $true
    $Domain_Scripts_Main.Width = 620
    $Domain_Scripts_Main.Height = 375
    $Domain_Scripts_Main.StartPosition = "CenterScreen"

    $DM_Next = New-Object system.windows.Forms.Button
    $DM_Next.Text = ">> Next"
    $DM_Next.Width = 90
    $DM_Next.Height = 30
    $DM_Next.enabled = $false
    $DM_Next.location = new-object system.drawing.point(505,285)
    $DM_Next.Font = "Microsoft Sans Serif,10"
    $DM_Next.Add_Click({
    $PC_List = Get-Content $global:Folder\LivePCs.txt
    $MaxThreads = 25
    While (@(Get-Job | Where { $_.Status -eq "Running"}).Count -ge $MaxThreads){
        Write-Host "Too many jobs, waiting until open resources"
        Start-Stop -Milliseconds 250
        }
        If ($Domain_Processes.Checked -eq $true){
            foreach ($a in $PC_List){
                New-Item $global:Folder\$a -ItemType Directory -ErrorAction SilentlyContinue 
                $Process = ($(Get-Process -ComputerName $a | Get-Unique | Select ProcessName | sort ProcessName ) | Out-File -FilePath $global:Folder\$a\"Processes.txt")
                Start-Job {$Process} | Out-Null
                Write-Host "Processes Done"
                }
            }
        If ($Domain_Services.Checked -eq $true){
            foreach ($b in $PC_List){
                New-Item $global:Folder\$b -ItemType Directory -ErrorAction SilentlyContinue
                $Services = ($(Get-Service -ComputerName $a | Get-Unique | Sort Name | Format-Table -AutoSize) | Out-File -FilePath $global:Folder\$b\"Services.txt")
                Start-Job {$Services} | Out-Null
                Write-Host "Services Done"
                }
            }
        If ($Domain_ComputerInfo.Checked -eq  $true){
            foreach ($c in $PC_List){
                New-Item $global:Folder\$c -ItemType Directory -ErrorAction SilentlyContinue
                #Need to configure to execute remotely
                #$CompInfo = ($(Get-ComputerInfo) | Out-File -FilePath $global:Folder\$IP_Local\"ComputerInfo.txt")
                Start-Job {$CompInfo} | Out-Null
                Write-Host "Computer Info Done"
                }
            }
        If ($Domain_AppLogsWarning.Checked -eq $true){
            foreach ($d in $PC_List){
                New-Item $global:Folder\$d -ItemType Directory -ErrorAction SilentlyContinue
                $AppLog1 = ($(Get-EventLog -LogName Application | Select EntryType, Source, Message | where EntryType -Like "Warning" | Format-Table -AutoSize) | Out-File -FilePath $global:Folder\$d\"Application_Warning.txt")
                Start-Job {$AppLog1} | Out-Null
                Write-Host "Application Log 'Warning' Done"
                }
            }
        If ($Domain_AppLogsError.Checked -eq $true){
            foreach ($e in $PC_List){
                New-Item $global:Folder\$e -ItemType Directory -ErrorAction SilentlyContinue
                $AppLog2 = ($(Get-EventLog -LogName Application | Select EntryType, Source, Message | where EntryType -Like "Error" | Format-Table -AutoSize) | Out-File -FilePath $global:Folder\$e\"Application_Error.txt")
                Start-Job {$AppLog2} | Out-Null
                Write-Host "Application Log 'Error' Done"
                }
            }
        If ($Domain_SysLogs.Checked -eq $true){
            foreach ($f in $PC_List){
                New-Item $global:Folder\$f -ItemType Directory -ErrorAction SilentlyContinue
                $SysLog = ($(Get-EventLog -LogName System | Select EntryType, Source, Message | where EntryType -Like "Warning" | Format-Table -Wrap -AutoSize) | Out-File -FilePath $global:Folder\$f\"SystemLog.txt")
                Start-Job {$SysLog} | Out-Null
                Write-Host "System Logs Done"
                }
            }
        If ($Domain_Registry.Checked -eq $true){
            foreach ($g in $PC_List){
                New-Item $global:Folder\$g -ItemType Directory -ErrorAction SilentlyContinue
                $Load_HKU = $(New-PSDrive -PSProvider Registry -Name HKU -Root HKEY_USERS)
                $HKLM_Run = ($(Get-ItemProperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Run' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$g\Registry.txt -Append)
                $HKLM_RunOnce = $((Get-ItemProperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$g\Registry.txt -Append) 
                $HKLM_Software = ($(Get-ChildItem 'HKLM:\Software' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$g\Registry.txt -Append)
                $HKLM_System_Mount = ($(Get-ItemProperty 'HKLM:\System\MountedDevices' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$g\Registry.txt -Append)
                #$HKLM_SAM = ($(Get-ChildItem 'HKLM:\SAM' -Recurse -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
                #$HKLM_Security = ($(Get-ChildItem 'HKLM:\Security' -Recurse -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
                #$HKLM_System_USB = ($(Get-ChildItem 'HKLM:\System\CurrentControlSet\Enum\USB' -Recurse -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
                $HKLM_CMD = ($(Get-ItemProperty 'HKLM:\Software\Microsoft\Command Processor' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
                $HKLM_CMD_64 = ($(Get-ItemProperty 'HKLM:\Software\Wow6432Node\Microsoft\Command Processor' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
                $HKCU_Run = ($(Get-ItemProperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
                $HKCU_RunOnce = ($(Get-ItemProperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce' -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)
                #$HKU = ($(Get-ChildItem 'HKU:' -Recurse | where { $_.Name -match 'Password' } -ErrorAction SilentlyContinue) | Out-File -FilePath $global:Folder\$IP_Local\Registry.txt -Append)

                $HKLM_Run, $HKLM_RunOnce, $HKLM_Software, $HKLM_System_Mount, $HKLM_CMD, $HKLM_CMD_64, $HKCU_Run, $HKCU_RunOnce
                #$HKLM_System_USB
                #$HKU
                #$HKLM_Security                                     Need to fix permissions issue to have access to these specific keys
                #$HKLM_SAM
                Start-Job {$Registry} | Out-Null
                Write-Host "Registry Done"
            }
        }
        Write-Host "Completed Everything"
        FinishMenu($Domain_Scripts_Main.Dispose())
    })
    $Domain_Scripts_Main.controls.Add($DM_Next)

    $DM_Prev = New-Object system.windows.Forms.Button
    $DM_Prev.Text = "Prev <<"
    $DM_Prev.Width = 90
    $DM_Prev.Height = 30
    $DM_Prev.location = new-object system.drawing.point(400,285)
    $DM_Prev.Font = "Microsoft Sans Serif,10"
    $Domain_Scripts_Main.controls.Add($DM_Prev)

    $DM_Help = New-Object system.windows.Forms.Button
    $DM_Help.Text = "Help"
    $DM_Help.Width = 90
    $DM_Help.Height = 30
    $DM_Help.location = new-object system.drawing.point(15,285)
    $DM_Help.Font = "Microsoft Sans Serif,10"
    $Domain_Scripts_Main.controls.Add($DM_Help)

    $Domain_Scripts_Textbox = New-Object system.windows.Forms.TextBox
    $Domain_Scripts_Textbox.Text = "`tPlease Select which scripts to execute"
    $Domain_Scripts_Textbox.Width = 400
    $Domain_Scripts_Textbox.Height = 20
    $Domain_Scripts_Textbox.enabled = $false
    $Domain_Scripts_Textbox.location = new-object system.drawing.point(100,50)
    $Domain_Scripts_Textbox.Font = "Microsoft Sans Serif,10"
    $Domain_Scripts_Main.controls.Add($Domain_Scripts_Textbox)

    $Domain_Processes = New-Object system.windows.Forms.CheckBox
    $Domain_Processes.Text = "Processes"
    $Domain_Processes.AutoSize = $true
    $Domain_Processes.Width = 95
    $Domain_Processes.Height = 20
    $Domain_Processes.Add_Click({DomainNextEnable})
    $Domain_Processes.location = new-object system.drawing.point(125,100)
    $Domain_Processes.Font = "Microsoft Sans Serif,10"
    $Domain_Scripts_Main.controls.Add($Domain_Processes)

    $Domain_ComputerInfo = New-Object system.windows.Forms.CheckBox
    $Domain_ComputerInfo.Text = "Computer Info"
    $Domain_ComputerInfo.AutoSize = $true
    $Domain_ComputerInfo.Width = 95
    $Domain_ComputerInfo.Height = 20
    $Domain_ComputerInfo.Add_Click({DomainNextEnable})
    $Domain_ComputerInfo.location = new-object system.drawing.point(125,150)
    $Domain_ComputerInfo.Font = "Microsoft Sans Serif,10"
    $Domain_Scripts_Main.controls.Add($Domain_ComputerInfo)

    $Domain_Services = New-Object system.windows.Forms.CheckBox
    $Domain_Services.Text = "Services"
    $Domain_Services.AutoSize = $true
    $Domain_Services.Width = 95
    $Domain_Services.Height = 20
    $Domain_Services.Add_Click({DomainNextEnable})
    $Domain_Services.location = new-object system.drawing.point(325,100)
    $Domain_Services.Font = "Microsoft Sans Serif,10"
    $Domain_Scripts_Main.controls.Add($Domain_Services)

    $Domain_SysLogs = New-Object system.windows.Forms.CheckBox
    $Domain_SysLogs.Text = "System Logs"
    $Domain_SysLogs.AutoSize = $true
    $Domain_SysLogs.Width = 95
    $Domain_SysLogs.Height = 20
    $Domain_SysLogs.Add_Click({DomainNextEnable})
    $Domain_SysLogs.location = new-object system.drawing.point(325,150)
    $Domain_SysLogs.Font = "Microsoft Sans Serif,10"
    $Domain_Scripts_Main.controls.Add($Domain_SysLogs)

    $Domain_AppLogsWarning = New-Object system.windows.Forms.CheckBox
    $Domain_AppLogsWarning.Text = "Application Log (Warning)"
    $Domain_AppLogsWarning.AutoSize = $true
    $Domain_AppLogsWarning.Width = 95
    $Domain_AppLogsWarning.Height = 20
    $Domain_AppLogsWarning.Add_Click({DomainNextEnable})
    $Domain_AppLogsWarning.location = new-object system.drawing.point(125,200)
    $Domain_AppLogsWarning.Font = "Microsoft Sans Serif,10"
    $Domain_Scripts_Main.controls.Add($Domain_AppLogsWarning)

    $Domain_AppLogsError = New-Object system.windows.Forms.CheckBox
    $Domain_AppLogsError.Text = "Application Log (Error)"
    $Domain_AppLogsError.AutoSize = $true
    $Domain_AppLogsError.Width = 95
    $Domain_AppLogsError.Height = 20
    $Domain_AppLogsError.Add_Click({DomainNextEnable})
    $Domain_AppLogsError.location = new-object system.drawing.point(325,200)
    $Domain_AppLogsError.Font = "Microsoft Sans Serif,10"
    $Domain_Scripts_Main.controls.Add($Domain_AppLogsError)

    $Domain_Registry = New-Object system.windows.Forms.CheckBox
    $Domain_Registry.Text = "Registry Enumeration"
    $Domain_Registry.AutoSize = $true
    $Domain_Registry.Width = 95
    $Domain_Registry.Height = 20
    $Domain_Registry.Add_Click({DomainNextEnable})
    $Domain_Registry.location = new-object system.drawing.point(125,250)
    $Domain_Registry.Font = "Microsoft Sans Serif,10"
    $Domain_Scripts_Main.controls.Add($Domain_Registry)

    Function DomainNextEnable {
        If ($Domain_Processes.Checked -or $Domain_Services.Checked -or $Domain_ComputerInfo.Checked -or $Domain_AppLogsWarning.Checked -or $Domain_AppLogsError.Checked -or $Domain_SysLogs.Checked -or $Domain_Registry.Checked -eq $true) {
            $DM_Next.Enabled = $true
        }
        Else {$DM_Next.Enabled = $false}
    }

    [void]$Domain_Scripts_Main.ShowDialog()
    $Domain_Scripts_Main.Dispose()

}

Function FinishMenu {
    
    Add-Type -AssemblyName System.Windows.Forms

    $FinishMenu = New-Object system.Windows.Forms.Form
    $FinishMenu.Text = "T.O.M.B - Completion Screen"
    $FinishMenu.TopMost = $true
    $FinishMenu.Width = 620
    $FinishMenu.Height = 375

    $Finish_TextBox = New-Object system.windows.Forms.TextBox
    $Finish_TextBox.Multiline = $true
    $Finish_TextBox.Text = "Thank you for using T.O.M.B.`r`n`r`nYour files are located at $global:Folder `r`n`r`n Inside this folder is a nested folder with your workstations IP address and inside of that is your additional documentation (i.e, Processes, Services, Logs etc.)"
    $Finish_TextBox.Width = 500
    $Finish_TextBox.Height = 200
    $Finish_TextBox.enabled = $false
    $Finish_TextBox.location = new-object system.drawing.point(50,50)
    $Finish_TextBox.Font = "Microsoft Sans Serif,10"
    $FinishMenu.controls.Add($Finish_TextBox)

    $Finish_Close = New-Object system.windows.Forms.Button
    $Finish_Close.Text = "Exit"
    $Finish_Close.Width = 90
    $Finish_Close.Height = 30
    $Finish_Close.Add_Click({$FinishMenu.Dispose()})
    $Finish_Close.location = new-object system.drawing.point(505,285)
    $Finish_Close.Font = "Microsoft Sans Serif,10"
    $FinishMenu.controls.Add($Finish_Close)

    [void]$FinishMenu.ShowDialog()
    $FinishMenu.Dispose()
}

MainMenu


########################################
#TODO
########################################
<#
1. Add Authentication
2. Add network scanning for 255.255.255.252.0 Network
3. Add network scanning for 255.255.255.254.0 network (started not yet finished)
4. Add ability to STIGS local and domain computers (written as seperate script currently, still buggy)
5. Add additional help menus for flow control
6. Add progress bars to domain scans like automatic scanning progress bar (1 bar for each selection made)
7. HBSS, Defender, Anti-Virus Log gathering
8. Active Directory, Security Groups, Kerberos Tickets, Elevated Users (Group breakdowns)
9. GPO and where they are applied
10. Local Shares / Local Users
11. Manual Range for networks (Currently runs on individual ip addresses)
12. ARP cache | List all contents of localhost (%systemroot%/etc/hosts
#>