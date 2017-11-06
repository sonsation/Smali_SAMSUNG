.class public final Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerRepeatExecutor;
.super Ljava/lang/Object;
.source "ChangePlayerRepeatExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerRepeatExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerRepeatExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerRepeatExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 31
    return-void
.end method

.method private getMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "RepeatOneSong"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    .line 64
    :cond_0
    const-string v0, "RepeatAllSongs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x2

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 11
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 35
    const-string v8, "CHANGE_REPEAT"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 36
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerRepeatExecutor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute() - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "state":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerRepeatExecutor;->getMode(Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, "mode":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 42
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 43
    .local v5, "values":Landroid/os/Bundle;
    const/4 v2, 0x1

    .line 44
    .local v2, "needChange":Z
    if-eqz v5, :cond_0

    .line 45
    const-string v8, "extra.repeat_state"

    .line 46
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "currentMode":I
    if-eq v1, v0, :cond_2

    move v2, v6

    .line 49
    .end local v0    # "currentMode":I
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 50
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->setRepeat(I)V

    .line 52
    :cond_1
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v8, "SameState"

    const-string v9, "Valid"

    if-eqz v2, :cond_3

    const-string v7, "no"

    :goto_1
    invoke-virtual {v3, v8, v9, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v7, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerRepeatExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v8, v6, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 58
    .end local v1    # "mode":I
    .end local v2    # "needChange":Z
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "values":Landroid/os/Bundle;
    :goto_2
    return v6

    .restart local v0    # "currentMode":I
    .restart local v1    # "mode":I
    .restart local v2    # "needChange":Z
    .restart local v4    # "state":Ljava/lang/String;
    .restart local v5    # "values":Landroid/os/Bundle;
    :cond_2
    move v2, v7

    .line 47
    goto :goto_0

    .line 53
    .end local v0    # "currentMode":I
    .restart local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_3
    const-string/jumbo v7, "yes"

    goto :goto_1

    .end local v1    # "mode":I
    .end local v2    # "needChange":Z
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "values":Landroid/os/Bundle;
    :cond_4
    move v6, v7

    .line 58
    goto :goto_2
.end method
