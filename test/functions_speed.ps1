$speeds = @{
    "Get-SystemSpecifications" = (Measure-Command { Get-SystemSpecifications }).TotalMilliseconds
    'Get-UserInformation' = (Measure-Command { Get-UserInformation }).TotalMilliseconds
    'Get-OS'= (Measure-Command { Get-OS }).TotalMilliseconds
    'Get-Kernel' = (Measure-Command { Get-Kernel }).TotalMilliseconds
    'Get-Uptime' = (Measure-Command { Get-Uptime }).TotalMilliseconds
    'Get-Mobo' = (Measure-Command { Get-Mobo }).TotalMilliseconds
    'Get-Shell' = (Measure-Command { Get-Shell }).TotalMilliseconds
    'Get-Displays' = (Measure-Command { Get-Displays }).TotalMilliseconds
    'Get-WM' = (Measure-Command { Get-WM }).TotalMilliseconds
    'Get-Font' = (Measure-Command { Get-Font }).TotalMilliseconds
    'Get-CPU' = (Measure-Command { Get-CPU }).TotalMilliseconds
    'Get-GPU' = (Measure-Command { Get-GPU }).TotalMilliseconds
    'Get-RAM' = (Measure-Command { Get-RAM }).TotalMilliseconds
    'Get-Disks' = (Measure-Command { Get-Disks }).TotalMilliseconds
}

$speeds.GetEnumerator() | Sort-Object -property:Value -Descending