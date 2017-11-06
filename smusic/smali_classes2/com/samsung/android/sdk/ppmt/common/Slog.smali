.class public Lcom/samsung/android/sdk/ppmt/common/Slog;
.super Ljava/lang/Object;
.source "Slog.java"


# static fields
.field private static final CONFIG_FILE_PATH:Ljava/lang/String; = "/ppmt"

.field private static final DEBUG:I = 0x4

.field private static final ERROR:I = 0x1

.field private static final INFO:I = 0x3

.field public static final LOG_FILE_PREFIX:Ljava/lang/String; = "Sppmtlog"

.field private static final MAX_SIZE_LOG_FILE:J = 0x500000L

.field protected static final TAG:Ljava/lang/String; = "Sppmt"

.field private static final VERBOSE:I = 0x5

.field private static final WARN:I = 0x2

.field private static mFileLogEnabled:Z

.field private static mLogEnabled:Z

.field private static mTestModeChecked:Z

.field private static sFilename:Ljava/lang/String;

.field private static sFilesDir:Ljava/lang/String;

.field private static sLogFile:Ljava/io/File;

.field private static sLogFileOutputStream:Ljava/io/FileOutputStream;

.field private static sLogNameCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mLogEnabled:Z

    .line 28
    sput-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mFileLogEnabled:Z

    .line 29
    sput-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mTestModeChecked:Z

    .line 30
    sput v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogNameCnt:I

    .line 31
    sput-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFile:Ljava/io/File;

    .line 32
    sput-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ppmt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->sFilesDir:Ljava/lang/String;

    .line 34
    const-string v0, "Sppmtlog0.txt"

    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->sFilename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 75
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->testModeCheck()V

    .line 76
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mLogEnabled:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mFileLogEnabled:Z

    if-eqz v0, :cond_1

    .line 80
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->flog(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->testModeCheck()V

    .line 68
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mFileLogEnabled:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->flog(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method static enableFileLog()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 57
    sput-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mLogEnabled:Z

    .line 60
    sput-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mFileLogEnabled:Z

    .line 63
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->makeLogFile()V

    .line 64
    return-void
.end method

.method public static enableLog(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mLogEnabled:Z

    .line 38
    return-void
.end method

.method private static flog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x20

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "MM/dd/yy HH:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 140
    packed-switch p0, :pswitch_data_0

    .line 155
    const/16 v0, 0x56

    .line 158
    .local v0, "charLvl":C
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->writeLogToFile([B)V

    .line 168
    return-void

    .line 142
    .end local v0    # "charLvl":C
    :pswitch_0
    const/16 v0, 0x45

    .line 143
    .restart local v0    # "charLvl":C
    goto :goto_0

    .line 145
    .end local v0    # "charLvl":C
    :pswitch_1
    const/16 v0, 0x44

    .line 146
    .restart local v0    # "charLvl":C
    goto :goto_0

    .line 148
    .end local v0    # "charLvl":C
    :pswitch_2
    const/16 v0, 0x49

    .line 149
    .restart local v0    # "charLvl":C
    goto :goto_0

    .line 151
    .end local v0    # "charLvl":C
    :pswitch_3
    const/16 v0, 0x57

    .line 152
    .restart local v0    # "charLvl":C
    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    .line 85
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->testModeCheck()V

    .line 86
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mLogEnabled:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mFileLogEnabled:Z

    if-eqz v0, :cond_1

    .line 90
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->flog(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "logData":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    packed-switch p0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const-string v1, "Sppmt"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :pswitch_1
    const-string v1, "Sppmt"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :pswitch_2
    const-string v1, "Sppmt"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :pswitch_3
    const-string v1, "Sppmt"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :pswitch_4
    const-string v1, "Sppmt"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static makeLogFile()V
    .locals 5

    .prologue
    .line 172
    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    .line 173
    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 174
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;

    .line 176
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sFilesDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 180
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/sdk/ppmt/common/Slog;->sFilesDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/ppmt/common/Slog;->sFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFile:Ljava/io/File;

    .line 181
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static remakeLogFile()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    sget v4, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogNameCnt:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogNameCnt:I

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sppmtlog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogNameCnt:I

    rem-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/sdk/ppmt/common/Slog;->sFilename:Ljava/lang/String;

    .line 216
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/sdk/ppmt/common/Slog;->sFilesDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/ppmt/common/Slog;->sFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "file":Ljava/io/File;
    :try_start_0
    sget-object v4, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x500000

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 219
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v4, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;

    .line 223
    :goto_0
    sput-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFile:Ljava/io/File;

    .line 228
    :goto_1
    return v2

    .line 221
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v4, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v2, v3

    .line 226
    goto :goto_1
.end method

.method private static testModeCheck()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 41
    sget-boolean v3, Lcom/samsung/android/sdk/ppmt/common/Slog;->mTestModeChecked:Z

    if-nez v3, :cond_1

    .line 42
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/ppmt"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ppmt.cfg"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v1, "cfgFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 45
    .local v2, "exists":Z
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    .line 47
    .local v0, "canWrite":Z
    const-string v5, "Sppmt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Test mode:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", cfgFileExist:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", canWrite:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->enableFileLog()V

    .line 51
    :cond_0
    sput-boolean v4, Lcom/samsung/android/sdk/ppmt/common/Slog;->mTestModeChecked:Z

    .line 53
    :cond_1
    return-void

    .line 47
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->testModeCheck()V

    .line 106
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mLogEnabled:Z

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 95
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->testModeCheck()V

    .line 96
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mLogEnabled:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->mFileLogEnabled:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->flog(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    return-void
.end method

.method public static writeLogToFile([B)V
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 188
    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFile:Ljava/io/File;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->makeLogFile()V

    .line 193
    :cond_1
    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 194
    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 196
    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x500000

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 197
    const-string v2, "Sppmt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current log file size is max. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 199
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;

    .line 200
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->remakeLogFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_2
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 206
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->sLogFile:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 207
    :catch_1
    move-exception v1

    .line 208
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
