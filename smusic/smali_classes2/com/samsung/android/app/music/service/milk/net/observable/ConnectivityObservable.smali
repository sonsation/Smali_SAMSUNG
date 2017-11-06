.class public Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;
.super Ljava/lang/Object;
.source "ConnectivityObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;
    }
.end annotation


# static fields
.field private static final RECHECK_TIME_THRESHOLD:J = 0x7530L

.field private static final TARGET_SERVER_URL:Ljava/lang/String; = "www.samsungapps.com"

.field private static instance:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;


# instance fields
.field private final connSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject",
            "<",
            "Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private mConnState:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

.field private mLastCheckTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->instance:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->NONE:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mConnState:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mLastCheckTime:J

    .line 21
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->connSubject:Lrx/subjects/PublishSubject;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;)Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mConnState:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;)Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;
    .param p1, "x1"    # Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mConnState:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;
    .param p1, "x1"    # J

    .prologue
    .line 12
    iput-wide p1, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mLastCheckTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;)Lrx/subjects/PublishSubject;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->connSubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method private checkConnection()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject",
            "<",
            "Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$1;-><init>(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;)V

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$1;->start()V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->connSubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public static get()Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->instance:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    return-object v0
.end method


# virtual methods
.method public check()Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->NONE:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mConnState:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->checkConnection()Lrx/subjects/PublishSubject;

    move-result-object v2

    .line 65
    :goto_0
    return-object v2

    .line 58
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->CONNECT:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mConnState:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mConnState:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, "current":J
    iget-wide v2, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mLastCheckTime:J

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->checkConnection()Lrx/subjects/PublishSubject;

    move-result-object v2

    goto :goto_0

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mConnState:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->NONE:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mConnState:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->mLastCheckTime:J

    .line 72
    return-void
.end method
