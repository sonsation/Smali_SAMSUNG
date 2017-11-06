.class public Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;
.super Ljava/lang/Object;
.source "JustForYouStationExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JustForYouStationExecutor"


# instance fields
.field private mCommandExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

.field private mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .param p2, "smartStationController"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;->mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;->mCommandExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;->dispatchCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    return-void
.end method

.method private dispatchCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V
    .locals 1
    .param p1, "result"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;->mCommandExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;->mCommandExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 3
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    const-string v0, "JustForYouStationExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute. command. - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "CREATE_AND_PLAY_JUST_FOR_YOU"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;->mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->createSmartStationObservable()Lrx/Observable;

    move-result-object v0

    .line 37
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 38
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;)V

    .line 39
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
