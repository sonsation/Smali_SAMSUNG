.class public Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;
.super Ljava/lang/Object;
.source "TopChartSelectAllExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "TopChartSelectAllExecutor"


# instance fields
.field private final mDisplayType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFragment:Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Ljava/lang/String;Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "displayType"    # Ljava/lang/String;
    .param p3, "fragment"    # Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;->mDisplayType:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;

    .line 32
    return-void
.end method

.method private excuteCommand(Ljava/lang/String;)Z
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "SelectAllRealtimeCharts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "2"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "SelectAllDailyCharts"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "3"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "SelectAllWeeklyCharts"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "4"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;->selectAll()V

    .line 68
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 65
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 6
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    const-string v3, "SELECT_ALL_TOPCHART"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    const-string v3, "TopChartSelectAllExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;->excuteCommand(Ljava/lang/String;)Z

    move-result v0

    .line 42
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 44
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 53
    .end local v0    # "success":Z
    :goto_0
    return v1

    .line 47
    .restart local v0    # "success":Z
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .end local v0    # "success":Z
    :cond_1
    move v1, v2

    .line 53
    goto :goto_0
.end method
