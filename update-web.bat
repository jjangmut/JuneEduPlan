@echo off
chcp 65001 > nul
echo ========================================================
echo   EduPlan Wiki 웹사이트 자동 갱신 (GitHub Push)
echo ========================================================
cd /d "%~dp0"

echo [1/3] 변경된 파일들을 추가합니다...
git add index.html Brisbane_Study_Master_Plan*.html .gitignore

echo [2/3] 업데이트 내용을 커밋합니다...
set "commit_msg=docs: update EduPlan Wiki on %date% %time%"
git commit -m "%commit_msg%"

echo [3/3] GitHub Pages로 업로드(Push)합니다...
git push origin main

echo.
echo ========================================================
echo   성공! 약 1~2분 후 웹사이트에 자동 반영됩니다.
echo   접속 주소: https://jjangmut.github.io/JuneEduPlan/
echo ========================================================
pause
