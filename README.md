# 🍅 PowerShell Pomodoro CLI Timer

A simple **command-line Pomodoro productivity timer** built using PowerShell.

It runs directly from the terminal and helps you focus using the Pomodoro technique.

Features:

- ⏳ Focus timer with countdown
- 📊 Terminal progress bar
- 🔔 Alarm sound when focus ends
- 🎵 Break music during break
- ☕ Automatic 5-minute break
- 📝 Productivity log
- 🔒 Optional screen lock
- 💻 Runs as a global command

---

# 📂 Folder Structure

Your tools folder should look like this:

C:\Users\HP\tools        
pomodoro.ps1
pomodoro.cmd
alarm.mp3
break.mp3
pomodoro_log.txt

---

# 🚀 Installation

### 1. Create tools folder


Download the tools.zip uploaded above inside HP files 
- Download the zip then select drive:C , click "enter"  
- Click "Yes"
- Save your zip file here C:\Users\HP
- Now unzip on same location

---

Restart PowerShell.

---

Open Powershell again and paste : 

```
cd tools
```

# ▶ Usage

Run the Pomodoro timer from anywhere in PowerShell.


### Start a 25-minute focus session

```
pomodoro 25
```

### Start a 45-minute focus session

```
pomodoro 45
```

### Start a 1-minute test timer

```
pomodoro 1
```

---

# ⏳ What Happens

1. Focus timer starts
2. Progress bar updates every second
3. Alarm sound plays when focus ends
4. Break timer starts automatically
5. Break music plays
6. Session is logged
7. Screen locks (optional)

---

# 📝 Productivity Log

Sessions are saved automatically to:


C:\Users\HP\tools\pomodoro_log.txt


Example:


2026-03-09 22:10 | 25 min focus session
2026-03-09 22:40 | 25 min focus session


---

# 🎵 Sound Files 
## (YOU CAN CHANGE IT WITH YOUR FAVOURITE SONGS BY RENAMING IT break.mp3 or alarm.mp3)

Place your audio files here:


C:\Users\HP\tools\alarm.mp3
C:\Users\HP\tools\break.mp3


These will be used for:

- **alarm.mp3** → when focus ends
- **break.mp3** → during break time

---

# 💻 Example Output

==============================
POMODORO TIMER

Time: 24:59 [##------------------]
Time: 24:58 [###-----------------]

Focus session complete!

Break Time (5 minutes)

Time: 04:59 [#-------------------]


---

# 👨‍💻 Developer

**VIPIN**


✅ After creating this file, your project will look like a real







