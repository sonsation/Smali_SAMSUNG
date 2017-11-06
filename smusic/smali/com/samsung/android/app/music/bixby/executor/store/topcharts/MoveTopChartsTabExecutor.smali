.class public Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;
.super Ljava/lang/Object;
.source "MoveTopChartsTabExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/ILoadFinished;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoveTopChartsTabExecutor"


# instance fields
.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tabControllable"    # Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    .line 32
    return-void
.end method

.method private getTabId(Ljava/lang/String;)I
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "tabId":I
    const-string v1, "RealTime"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const/4 v0, 0x0

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    const-string v1, "Daily"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :cond_2
    const-string v1, "Weekly"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private sendComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "state":Ljava/lang/String;
    const-string v2, "RealTime"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Daily"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Weekly"

    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 88
    .end local v1    # "state":Ljava/lang/String;
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_1
    if-nez v0, :cond_2

    .line 89
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 7
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    const-string v4, "MOVE_TOPCHART_TAB"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 39
    const-string v4, "MoveTopChartsTabExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->getTabId(Ljava/lang/String;)I

    move-result v1

    .line 42
    .local v1, "tabId":I
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    invoke-interface {v4, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;->selectTab(II)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    check-cast v0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;

    .line 47
    .local v0, "selectTopChartFragment":Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->isLoadFinished(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->sendComplete()V

    .line 57
    .end local v0    # "selectTopChartFragment":Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;
    .end local v1    # "tabId":I
    :goto_0
    return v2

    .line 50
    .restart local v0    # "selectTopChartFragment":Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;
    .restart local v1    # "tabId":I
    :cond_0
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;->setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;I)V

    goto :goto_0

    .end local v0    # "selectTopChartFragment":Lcom/samsung/android/app/music/milk/store/topchart/TopChartTabHostFragment;
    .end local v1    # "tabId":I
    :cond_1
    move v2, v3

    .line 57
    goto :goto_0
.end method

.method public loadFinished()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/MoveTopChartsTabExecutor;->sendComplete()V

    .line 75
    return-void
.end method
