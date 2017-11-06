.class public Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;
.super Ljava/lang/Object;
.source "PerformanceChecker.java"


# static fields
.field private static inst:Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->inst:Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->map:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->map:Ljava/util/Map;

    .line 13
    return-void
.end method

.method public static api()Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->inst:Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;

    return-object v0
.end method


# virtual methods
.method public get(I)J
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->get(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-wide/16 v0, -0x1

    .line 35
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public getset(I)J
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->getset(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getset(Ljava/lang/String;)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->set(Ljava/lang/String;)V

    .line 45
    const-wide/16 v0, 0x0

    .line 49
    :goto_0
    return-wide v0

    .line 47
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v0, v4, v2

    .line 48
    .local v0, "ret":J
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->set(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    return-void
.end method

.method public set(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->set(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/PerformanceChecker;->map:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method
