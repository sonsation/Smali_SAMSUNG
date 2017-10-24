.class public Lcom/absolute/android/persistservice/WatchdogInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_consecutiveRestartCount:Ljava/lang/Integer;

.field private m_startTimestamp:Ljava/lang/Long;

.field private m_totalRestarts:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_totalRestarts:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_startTimestamp:Ljava/lang/Long;

    .line 40
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    .line 58
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    .line 65
    return-void
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_totalRestarts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_totalRestarts:Ljava/lang/Integer;

    .line 83
    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_totalRestarts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_totalRestarts:Ljava/lang/Integer;

    .line 90
    return-void
.end method

.method protected g()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_startTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_startTimestamp:Ljava/lang/Long;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Consecutive restarts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Total restarts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/WatchdogInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-gtz v1, :cond_0

    .line 129
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/WatchdogInfo;->g()J

    move-result-wide v2

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 126
    sub-long v2, v4, v2

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Msec since last restart = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
