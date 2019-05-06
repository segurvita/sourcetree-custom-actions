rem git checkout master
set mergedBranches=`git branch --merged`
setlocal EnableDelayedExpansion
for /F "usebackq delims=" %%g in (%mergedBranches%) do (
    echo "%%g" | findstr "master develop source"
    if !errorlevel! equ 1 (
        git branch -d %%g
    )
)