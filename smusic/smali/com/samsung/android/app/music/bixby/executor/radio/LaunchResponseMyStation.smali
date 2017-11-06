.class public Lcom/samsung/android/app/music/bixby/executor/radio/LaunchResponseMyStation;
.super Ljava/lang/Object;
.source "LaunchResponseMyStation.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/ILoadFinished;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LaunchResponseMyStation"


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchResponseMyStation;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchResponseMyStation;->mContext:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 10
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 43
    const-string v7, "LaunchResponseMyStation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "execute() - Action("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") State("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") isLast("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "state":Ljava/lang/String;
    const-string v7, "RADIO_BUTTON_GROUP"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "MyStations"

    .line 49
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 51
    const/4 v2, 0x0

    .line 53
    .local v2, "itemCount":I
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchResponseMyStation;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 54
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getCountOfMyStations(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 59
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 60
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-lez v2, :cond_0

    .line 62
    const-string v6, "MyStations"

    const-string v7, "Exist"

    const-string/jumbo v8, "yes"

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchResponseMyStation;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v7, v5, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 80
    .end local v2    # "itemCount":I
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_2
    return v5

    .line 55
    .restart local v2    # "itemCount":I
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "LaunchResponseMyStation"

    const-string v8, "execute() - get MyStation Count has problem"

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    const-string v6, "MyStations"

    const-string v7, "Exist"

    const-string v8, "no"

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_1
    if-gtz v2, :cond_2

    const-string v7, "Music_356"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getRuleId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 69
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchResponseMyStation;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v7, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_2

    .line 71
    :cond_3
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v7, "MyStations"

    const-string v8, "Exist"

    const-string v9, "no"

    invoke-virtual {v3, v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v7, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchResponseMyStation;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v8, v6, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_2

    .end local v2    # "itemCount":I
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_4
    move v5, v6

    .line 80
    goto :goto_2
.end method

.method public loadFinished()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
