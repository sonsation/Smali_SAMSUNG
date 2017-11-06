.class public Lcom/samsung/android/app/music/common/util/ConvertSystemTime;
.super Ljava/lang/Object;
.source "ConvertSystemTime.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TIME_LIMIT_THRESHOULD:J = 0x5265c00L

.field private static bSetServerTime:Z

.field private static mOrgServerTime:Ljava/lang/String;

.field private static timeGap:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->LOG_TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->bSetServerTime:Z

    .line 19
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->timeGap:J

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->mOrgServerTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static checkValidServerTimeWithNTP(Ljava/lang/String;)V
    .locals 2
    .param p0, "serverTime"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/common/util/ConvertSystemTime$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    return-void
.end method

.method public static getCurrentTimeGMT()Ljava/lang/String;
    .locals 6

    .prologue
    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 114
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "time":Ljava/lang/String;
    return-object v1
.end method

.method public static getCurrentTimeMillisGMT()J
    .locals 6

    .prologue
    .line 119
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getCurrentTimeGMT()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "time":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 123
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 124
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 128
    .end local v0    # "d":Ljava/util/Date;
    :goto_0
    return-wide v4

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 128
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getOriginServerTimeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->mOrgServerTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getServerTime()J
    .locals 4

    .prologue
    .line 179
    sget-wide v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->timeGap:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->timeGap:J

    sub-long/2addr v0, v2

    .line 182
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getServerTime(J)J
    .locals 4
    .param p0, "baseElapsedRealtime"    # J

    .prologue
    .line 193
    sget-wide v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->timeGap:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 194
    sget-wide v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->timeGap:J

    sub-long v0, p0, v0

    .line 196
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getServerTime(Z)J
    .locals 6
    .param p0, "useDeviceTime"    # Z

    .prologue
    .line 207
    sget-wide v2, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->timeGap:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    if-eqz p0, :cond_0

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 209
    .local v0, "time":J
    sget-object v2, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServerTime timeGap is 0. so return device time. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v0    # "time":J
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getServerTimeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTime(Ljava/lang/String;)J
    .locals 6
    .param p0, "strTime"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v4, 0x0

    .line 154
    .local v4, "receivedDate":Ljava/util/Date;
    const-wide/16 v0, 0x0

    .line 155
    .local v0, "convertTime":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+00:00"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 158
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 169
    :goto_0
    return-wide v0

    .line 161
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v3

    .line 164
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 165
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getCurrentTimeMillisGMT()J

    move-result-wide v0

    .line 168
    goto :goto_0

    .line 166
    .end local v3    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v3

    .line 167
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "milli"    # J

    .prologue
    .line 147
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT+00:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 149
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeGap()J
    .locals 2

    .prologue
    .line 220
    sget-wide v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->timeGap:J

    return-wide v0
.end method

.method public static isDateFormat(Ljava/lang/String;)Z
    .locals 3
    .param p0, "strTime"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 141
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSetServerTime()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->bSetServerTime:Z

    return v0
.end method

.method public static setServerTime(Ljava/lang/String;)V
    .locals 11
    .param p0, "strTime"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 33
    if-nez p0, :cond_0

    .line 34
    sget-object v3, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "setServerTime received time is null"

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->bSetServerTime:Z

    .line 39
    sput-object p0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->mOrgServerTime:Ljava/lang/String;

    .line 41
    sget-object v3, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setServerTime received value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentTimeGMT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 41
    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "receivedDate":Ljava/util/Date;
    const-wide/16 v4, 0x0

    .line 46
    .local v4, "serverTime":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT+00:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 49
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 60
    :goto_1
    sget-object v3, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setServerTime before time - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTimeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sput-wide v6, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->timeGap:J

    .line 64
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->checkValidServerTimeWithNTP(Ljava/lang/String;)V

    .line 66
    sget-object v3, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setServerTime adjustment time gap - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->timeGap:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v3, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setServerTime severTime - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTimeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    sput-boolean v3, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->bSetServerTime:Z

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    goto :goto_1

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/text/ParseException;
    sput-boolean v10, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->bSetServerTime:Z

    .line 57
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 58
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getCurrentTimeMillisGMT()J

    move-result-wide v4

    goto :goto_1
.end method

.method public static setTimeGap(J)V
    .locals 0
    .param p0, "gap"    # J

    .prologue
    .line 216
    sput-wide p0, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->timeGap:J

    .line 217
    return-void
.end method
