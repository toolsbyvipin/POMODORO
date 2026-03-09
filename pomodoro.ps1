param(
    [int]$minutes = 25
)

# ---------- Banner ----------
function ShowBanner {

    Clear-Host
    Write-Host ""
    Write-Host "=====================================" -ForegroundColor Cyan
    Write-Host "          POMODORO TIMER             " -ForegroundColor Yellow
    Write-Host "=====================================" -ForegroundColor Cyan
    Write-Host ""
}

# ---------- Progress Bar ----------
function ShowProgress {

    param([int]$percent)

    $bars = [math]::Floor($percent / 5)
    $spaces = 20 - $bars

    $bar = ("#" * $bars) + ("-" * $spaces)

    Write-Host -NoNewline "[$bar] $percent%"
}

# ---------- Focus Session ----------
function FocusSession {

    param([int]$minutes)

    $totalSeconds = $minutes * 60

    Write-Host "Focus Session Started ($minutes minutes)" -ForegroundColor Green
    Write-Host ""

    for ($i = $totalSeconds; $i -ge 0; $i--) {

        $min = [int]($i / 60)
        $sec = [int]($i % 60)

        $time = "{0:D2}:{1:D2}" -f $min,$sec

        $percent = [int]((($totalSeconds - $i) / $totalSeconds) * 100)

        Write-Host -NoNewline "`rTime Remaining: $time "
        ShowProgress $percent

        Start-Sleep 1
    }

    Write-Host ""
    Write-Host ""
    Write-Host "Focus Session Complete!" -ForegroundColor Yellow

    PlayAlarm
}

# ---------- Alarm ----------
function PlayAlarm {

    $alarm = Join-Path $PSScriptRoot "alarm.mp3"

    if (Test-Path $alarm) {
        Start-Process $alarm
    }
}

# ---------- Break Session ----------
function BreakSession {

    $breakMinutes = 5
    $totalSeconds = $breakMinutes * 60

    Write-Host ""
    Write-Host "Break Time ($breakMinutes minutes)" -ForegroundColor Cyan
    Write-Host ""

    # play break music
    $breakMusic = Join-Path $PSScriptRoot "break.mp3"

    if (Test-Path $breakMusic) {
        Start-Process $breakMusic
    }

    # open Windows sign-in screen
    Start-Sleep 2
    rundll32.exe user32.dll,LockWorkStation

    for ($i = $totalSeconds; $i -ge 0; $i--) {

        $min = [int]($i / 60)
        $sec = [int]($i % 60)

        $time = "{0:D2}:{1:D2}" -f $min,$sec

        $percent = [int]((($totalSeconds - $i) / $totalSeconds) * 100)

        Write-Host -NoNewline "`rBreak Remaining: $time "
        ShowProgress $percent

        Start-Sleep 1
    }

    Write-Host ""
    Write-Host ""
    Write-Host "Break Finished!" -ForegroundColor Green
}

# ---------- Footer ----------
function ShowFooter {

    Write-Host ""
    Write-Host "Developed by VIPIN" -ForegroundColor Magenta
    Write-Host ""
}

# ---------- MAIN ----------
ShowBanner
FocusSession $minutes
BreakSession
ShowFooter