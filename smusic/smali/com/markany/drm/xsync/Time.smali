.class public Lcom/markany/drm/xsync/Time;
.super Ljava/lang/Object;
.source "Time.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_Time()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/markany/drm/xsync/Time;-><init>(JZ)V

    .line 88
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/markany/drm/xsync/Time;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/Time;)J
    .locals 2
    .param p0, "obj"    # Lcom/markany/drm/xsync/Time;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/markany/drm/xsync/Time;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/markany/drm/xsync/Time;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_Time(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/markany/drm/xsync/Time;->delete()V

    .line 26
    return-void
.end method

.method public getDay()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_day_get(JLcom/markany/drm/xsync/Time;)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_hour_get(JLcom/markany/drm/xsync/Time;)I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_minute_get(JLcom/markany/drm/xsync/Time;)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_month_get(JLcom/markany/drm/xsync/Time;)I

    move-result v0

    return v0
.end method

.method public getSec()I
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_sec_get(JLcom/markany/drm/xsync/Time;)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_year_get(JLcom/markany/drm/xsync/Time;)I

    move-result v0

    return v0
.end method

.method public setDay(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_day_set(JLcom/markany/drm/xsync/Time;I)V

    .line 56
    return-void
.end method

.method public setHour(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_hour_set(JLcom/markany/drm/xsync/Time;I)V

    .line 64
    return-void
.end method

.method public setMinute(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_minute_set(JLcom/markany/drm/xsync/Time;I)V

    .line 72
    return-void
.end method

.method public setMonth(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_month_set(JLcom/markany/drm/xsync/Time;I)V

    .line 48
    return-void
.end method

.method public setSec(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_sec_set(JLcom/markany/drm/xsync/Time;I)V

    .line 80
    return-void
.end method

.method public setYear(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/markany/drm/xsync/Time;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Time_year_set(JLcom/markany/drm/xsync/Time;I)V

    .line 40
    return-void
.end method
