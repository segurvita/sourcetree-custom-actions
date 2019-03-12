set mergedBranches=`git branch --merged master`
for /F "usebackq delims=" %%g in (%mergedBranches%) do (
    echo "%%g" | findstr "master develop"
    if !errorlevel! equ 1 (
        git branch -d %%g
    )
)