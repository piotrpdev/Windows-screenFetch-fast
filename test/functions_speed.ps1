$speeds = @{
    "Get-SystemSpecifications" = (Measure-Command { Get-SystemSpecifications }).TotalSeconds
    'Get-UserInformation' = (Measure-Command { Get-UserInformation }).TotalSeconds
    'Get-OS'= (Measure-Command { Get-OS }).TotalSeconds
    'Get-Kernel' = (Measure-Command { Get-Kernel }).TotalSeconds
    'Get-Uptime' = (Measure-Command { Get-Uptime }).TotalSeconds
    'Get-Mobo' = (Measure-Command { Get-Mobo }).TotalSeconds
    'Get-Shell' = (Measure-Command { Get-Shell }).TotalSeconds
    'Get-Displays' = (Measure-Command { Get-Displays }).TotalSeconds
    'Get-WM' = (Measure-Command { Get-WM }).TotalSeconds
    'Get-Font' = (Measure-Command { Get-Font }).TotalSeconds
    'Get-CPU' = (Measure-Command { Get-CPU }).TotalSeconds
    'Get-GPU' = (Measure-Command { Get-GPU }).TotalSeconds
    'Get-RAM' = (Measure-Command { Get-RAM }).TotalSeconds
    'Get-Disks' = (Measure-Command { Get-Disks }).TotalSeconds
}

$speeds.GetEnumerator() | Sort-Object -property:Value -Descending