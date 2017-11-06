.class public Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;
.super Ljava/lang/Object;
.source "InitObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$SignInFunc;,
        Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;


# instance fields
.field private bSignedIn:Z

.field private initState:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

.field private final initailizeSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isInit:Z

.field private final signinSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->NOT_INITIALIZED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initState:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    .line 27
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->bSignedIn:Z

    .line 29
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->isInit:Z

    .line 34
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initailizeSubject:Lrx/subjects/PublishSubject;

    .line 35
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->signinSubject:Lrx/subjects/PublishSubject;

    .line 36
    return-void
.end method

.method public static get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->instance:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->instance:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->instance:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->instance:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startClientInternal(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->doWork()V

    .line 125
    return-void
.end method


# virtual methods
.method public checkSignIn()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->getSigninSubject()Lrx/subjects/PublishSubject;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized create(Landroid/content/Context;)Lrx/Observable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->isInitDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 106
    :goto_0
    monitor-exit p0

    return-object v0

    .line 103
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->isInitFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->startClientInternal(Landroid/content/Context;)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->getInitializeSubject()Lrx/subjects/PublishSubject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInitializeSubject()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initailizeSubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public getSigninSubject()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->signinSubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public initDone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 87
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->isInit:Z

    .line 88
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INIT_DONE:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initState:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->getInitializeSubject()Lrx/subjects/PublishSubject;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->getInitializeSubject()Lrx/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->onCompleted()V

    .line 91
    return-void
.end method

.method public initFail()V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INIT_FAILED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initState:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->getInitializeSubject()Lrx/subjects/PublishSubject;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/NetworkTransportInitException;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/milk/NetworkTransportInitException;-><init>()V

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public isInitDone()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initState:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INIT_DONE:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitFailed()Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initState:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INIT_FAILED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitializing()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initState:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INITIALIZING:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->bSignedIn:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->NOT_INITIALIZED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initState:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    .line 118
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->bSignedIn:Z

    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->isInit:Z

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->instance:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    .line 121
    return-void
.end method

.method public scheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public setSignIn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->bSignedIn:Z

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->getSigninSubject()Lrx/subjects/PublishSubject;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->getSigninSubject()Lrx/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->onCompleted()V

    .line 97
    return-void
.end method

.method public startInit()V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INITIALIZING:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initState:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    .line 84
    return-void
.end method
