.class final Lcom/samsung/android/app/music/common/util/ConvertSystemTime$1;
.super Ljava/lang/Object;
.source "ConvertSystemTime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->checkValidServerTimeWithNTP(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$serverTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime$1;->val$serverTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 77
    new-instance v2, Lcom/samsung/android/app/music/common/util/SntpClient;

    invoke-direct {v2}, Lcom/samsung/android/app/music/common/util/SntpClient;-><init>()V

    .line 78
    .local v2, "client":Lcom/samsung/android/app/music/common/util/SntpClient;
    const-string/jumbo v11, "pool.ntp.org"

    const/16 v14, 0x7530

    invoke-virtual {v2, v11, v14}, Lcom/samsung/android/app/music/common/util/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 79
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/util/SntpClient;->getNtpTime()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    add-long v14, v14, v16

    .line 80
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/util/SntpClient;->getNtpTimeReference()J

    move-result-wide v16

    sub-long v6, v14, v16

    .line 81
    .local v6, "now":J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 82
    .local v5, "ntpDate":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 83
    .local v8, "ntpDateLong":J
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ntpTime ntpDate - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 84
    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " long : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 83
    invoke-static {v11, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v11, "GMT+00:00"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 89
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime$1;->val$serverTime:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 90
    .local v10, "serverDate":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 91
    .local v12, "serverDateLong":J
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "serverTime serverDate - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 92
    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " long : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 91
    invoke-static {v11, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_1

    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-lez v11, :cond_1

    .line 95
    sub-long v14, v12, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x5265c00

    cmp-long v11, v14, v16

    if-lez v11, :cond_0

    .line 107
    .end local v3    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v5    # "ntpDate":Ljava/util/Date;
    .end local v6    # "now":J
    .end local v8    # "ntpDateLong":J
    .end local v10    # "serverDate":Ljava/util/Date;
    .end local v12    # "serverDateLong":J
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v3    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v5    # "ntpDate":Ljava/util/Date;
    .restart local v6    # "now":J
    .restart local v8    # "ntpDateLong":J
    .restart local v10    # "serverDate":Ljava/util/Date;
    .restart local v12    # "serverDateLong":J
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "validCheckWithNTP serverDateLong : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ntpDateLong : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v10    # "serverDate":Ljava/util/Date;
    .end local v12    # "serverDateLong":J
    :catch_0
    move-exception v4

    .line 104
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
