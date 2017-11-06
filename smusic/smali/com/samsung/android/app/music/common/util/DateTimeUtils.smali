.class public Lcom/samsung/android/app/music/common/util/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# static fields
.field public static sTimezone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "+09:00"

    sput-object v0, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->sTimezone:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareBigger(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 154
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 155
    .local v0, "aDate":Ljava/util/Date;
    const/4 v1, 0x0

    .line 157
    .local v1, "bDate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 158
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 163
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    .line 165
    .local v2, "compare":I
    if-lez v2, :cond_0

    .line 166
    const/4 v5, 0x1

    .line 170
    .end local v2    # "compare":I
    :goto_1
    return v5

    .line 159
    :catch_0
    move-exception v3

    .line 160
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static convertDateMillis(Ljava/lang/String;)J
    .locals 6
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 109
    const-wide/16 v4, 0x0

    .line 111
    .local v4, "ret":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT+00:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 113
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .local v2, "receivedDate":Ljava/util/Date;
    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 125
    .end local v2    # "receivedDate":Ljava/util/Date;
    :cond_0
    :goto_0
    return-wide v4

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0
.end method

.method public static convertDateSec(Ljava/lang/String;)J
    .locals 4
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateMillis(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertDateToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 140
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 141
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "stringDate":Ljava/lang/String;
    return-object v1
.end method

.method public static convertShortString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 44
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    move-object v3, p0

    .line 46
    .local v3, "shortDate":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 47
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 51
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-object v3

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertStringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "stringDate"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 129
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 131
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertStringToUTC(Ljava/lang/String;)J
    .locals 7
    .param p0, "stringDate"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 82
    if-nez p0, :cond_0

    .line 101
    :goto_0
    return-wide v4

    .line 86
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 89
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 101
    .local v4, "milliseconds":J
    goto :goto_0

    .line 90
    .end local v4    # "milliseconds":J
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 94
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    goto :goto_0

    .line 95
    :catch_1
    move-exception v2

    .line 96
    .local v2, "err":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static convertUTCToLocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v3, ""

    .line 60
    .local v3, "ret":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "GMT+00:00"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 62
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 66
    .local v0, "date":Ljava/util/Date;
    const-string v4, "GMT+09:00"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 67
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 72
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    :goto_0
    return-object v3

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertUtcToString(J)Ljava/lang/String;
    .locals 2
    .param p0, "milliseconds"    # J

    .prologue
    .line 29
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUtcToString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "stringDate":Ljava/lang/String;
    return-object v0
.end method

.method public static convertUtcToString(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "milliseconds"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 36
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 37
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "stringDate":Ljava/lang/String;
    return-object v2
.end method

.method public static getDateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateLocale"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 197
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 198
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    const v4, 0x7f0a0359

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 210
    .end local v1    # "date":Ljava/util/Date;
    .end local p1    # "dateLocale":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 201
    .restart local v1    # "date":Ljava/util/Date;
    .restart local p1    # "dateLocale":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 202
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 203
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    const v4, 0x7f0a035a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 207
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "date":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHourDiff(J)I
    .locals 4
    .param p0, "currentMili"    # J

    .prologue
    .line 182
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 183
    .local v0, "defaultOffset":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->sTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 185
    .local v1, "serverOffset":I
    sub-int v2, v1, v0

    const v3, 0x36ee80

    div-int/2addr v2, v3

    return v2
.end method

.method public static getTodayTime()I
    .locals 4

    .prologue
    .line 178
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
