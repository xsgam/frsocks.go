@echo off

SET OUTNAME=%1
SET CGO_ENABLED=0

rem default output
IF "%1" == "" (SET OUTNAME=aa)

SET GOOS=linux
SET GOARCH=386
go build -o %OUTNAME%_%GOOS%_%GOARCH%

SET GOOS=linux
SET GOARCH=amd64
go build -o %OUTNAME%_%GOOS%_%GOARCH%


SET GOOS=windows
SET GOARCH=386
go build -o %OUTNAME%_%GOOS%_%GOARCH%

SET GOOS=windows
SET GOARCH=amd64
go build -o %OUTNAME%_%GOOS%_%GOARCH%

