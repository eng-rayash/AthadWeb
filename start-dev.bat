@echo off
:: Set code page to UTF-8 to support Arabic characters in the terminal
chcp 65001 > nul

echo =====================================================================
echo    تجهيز وتشغيل مشروع موقع اتحاد البناء (دمج الواجهة والخلفية)
echo =====================================================================
echo.

if not exist "%~dp0node_modules" (
    echo [1/2] مجلد node_modules غير موجود. جاري تثبيت المكتبات (npm install)...
    call npm install
    echo.
) else (
    echo [1/2] المكتبات مثبتة بالفعل. تخطي خطوة التثبيت...
    echo.
)

echo [2/2] تشغيل الخادم المدمج (Express + Vite)...
echo.
echo =====================================================================
echo  🚀 سيتم تشغيل المشروع بالكامل على المنفذ 3000.
echo  🔗 يمكنك تصفح الموقع ولوحة التحكم عبر الرابط:
echo  http://localhost:3000
echo =====================================================================
echo.

call npm run dev

pause
