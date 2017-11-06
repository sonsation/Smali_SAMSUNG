.class public Lcom/samsung/android/sdk/ppmt/common/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final DAYMILLIS:J = 0x5265c00L

.field public static final HOURMILLIS:J = 0x36ee80L

.field public static final MINMILLIS:J = 0xea60L

.field public static final SECMILLIS:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomMillis(JJ)J
    .locals 6
    .param p0, "from"    # J
    .param p2, "to"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 20
    sub-long v2, p2, p0

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 21
    .local v0, "interval":I
    if-gtz v0, :cond_0

    .line 26
    .end local p0    # "from":J
    :goto_0
    return-wide p0

    .line 25
    .restart local p0    # "from":J
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 26
    .local v1, "rand":Ljava/util/Random;
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    add-long/2addr p0, v2

    goto :goto_0
.end method

.method public static getString(J)Ljava/lang/String;
    .locals 2
    .param p0, "ms"    # J

    .prologue
    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 15
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setTime(Ljava/util/Calendar;III)V
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "hour"    # I
    .param p2, "min"    # I
    .param p3, "sec"    # I

    .prologue
    const/16 v1, 0x3c

    .line 30
    if-nez p0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, v1, :cond_0

    .line 36
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 37
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 38
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method
