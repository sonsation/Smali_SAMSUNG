.class Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveDumpRunnable"
.end annotation


# instance fields
.field e:Ljava/lang/Exception;

.field msg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/SamsungActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/SamsungActivityManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/SamsungActivityManagerService;

    .prologue
    const/4 v0, 0x0

    .line 1767
    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;->e:Ljava/lang/Exception;

    .line 1769
    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;->msg:Ljava/lang/String;

    .line 1767
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 1773
    const-string v16, "stopped"

    const-string v17, "init.svc.dumpstate"

    const-string v18, "stopped"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 1774
    const-string v16, "SamsungActivityManager"

    const-string v17, "saveDump is already running."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    return-void

    .line 1777
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1778
    .local v2, "before":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;->msg:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 1779
    const-string v16, "ActivityManager"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;->msg:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;->msg:Ljava/lang/String;

    .line 1783
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;->e:Ljava/lang/Exception;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;->e:Ljava/lang/Exception;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 1785
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;->e:Ljava/lang/Exception;

    .line 1788
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1789
    .local v4, "cal":Ljava/util/Calendar;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v16, "00"

    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v17 .. v17}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 1790
    .local v7, "df":Ljava/text/DecimalFormat;
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v12

    .line 1791
    .local v12, "month":Ljava/lang/String;
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 1792
    .local v6, "day":Ljava/lang/String;
    const/16 v16, 0xb

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    .line 1793
    .local v10, "hour":Ljava/lang/String;
    const/16 v16, 0xc

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    .line 1794
    .local v11, "min":Ljava/lang/String;
    const/16 v16, 0xd

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v13

    .line 1795
    .local v13, "sec":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1796
    .local v15, "sysdump_time":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "bugreport -mt > /data/log/dumpState_systemui_kill"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1797
    const-string v17, ".log"

    .line 1796
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1799
    .local v5, "cmd":Ljava/lang/String;
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    .line 1800
    const-string v16, "/system/bin/sh"

    const/16 v17, 0x0

    aput-object v16, v14, v17

    const-string v16, "-c"

    const/16 v17, 0x1

    aput-object v16, v14, v17

    const/16 v16, 0x2

    aput-object v5, v14, v16

    .line 1804
    .local v14, "shell_command":[Ljava/lang/String;
    :try_start_0
    const-string v16, "SamsungActivityManager"

    const-string v17, "exec command"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    :goto_0
    const-string v16, "SamsungActivityManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Time : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    return-void

    .line 1809
    :catch_0
    move-exception v9

    .line 1810
    .local v9, "exception":Ljava/lang/SecurityException;
    const-string v16, "SamsungActivityManager"

    const-string v17, "DoShellCmd - SecurityException"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1807
    .end local v9    # "exception":Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    .line 1808
    .local v8, "exception":Ljava/io/IOException;
    const-string v16, "SamsungActivityManager"

    const-string v17, "DoShellCmd - IOException"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
