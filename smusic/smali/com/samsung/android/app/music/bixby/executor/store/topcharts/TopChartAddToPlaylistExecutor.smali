.class public Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;
.super Ljava/lang/Object;
.source "TopChartAddToPlaylistExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "TopChartAddToPlaylistExecutor"


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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;->mDisplayType:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;

    .line 31
    return-void
.end method

.method private excuteCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 2
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 46
    const-string v0, "AddToPlaylist"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "3"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;->mDisplayType:Ljava/lang/String;

    const-string v1, "4"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;->mFragment:Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;->addPlaylist()V

    .line 57
    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 53
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 3
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    const-string v0, "ADD_TO_PLAYLIST"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "TopChartAddToPlaylistExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;->excuteCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z

    .line 39
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
