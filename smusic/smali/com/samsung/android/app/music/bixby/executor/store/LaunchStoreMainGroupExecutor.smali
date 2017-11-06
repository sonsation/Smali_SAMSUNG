.class public Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;
.super Ljava/lang/Object;
.source "LaunchStoreMainGroupExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/ILoadFinished;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchStoreMainGroupExecutor"


# instance fields
.field private group:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsCallSub:Z

.field private final mStoreFragment:Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;)V
    .locals 1
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "storeFragment"    # Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mIsCallSub:Z

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 49
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mStoreFragment:Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;

    .line 51
    return-void
.end method

.method private excuteCommand(Ljava/lang/String;)V
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mIsCallSub:Z

    if-nez v3, :cond_0

    .line 86
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mIsCallSub:Z

    .line 87
    const-string v3, "MusicVideos"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mStoreFragment:Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 89
    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;->getStoreMaingGroup(Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v2

    .line 90
    .local v2, "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    if-eqz v2, :cond_2

    .line 91
    const-string v3, "LaunchStoreMainGroupExecutor"

    const-string v4, "launch video"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    .line 136
    .end local v2    # "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v3, "MagazineList"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mContext:Landroid/content/Context;

    const-class v4, Lcom/samsung/android/app/music/milk/store/pick/list/PickListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    if-eqz v1, :cond_0

    .line 133
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :cond_3
    const-string v3, "TopCharts"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mStoreFragment:Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 99
    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;->getStoreMaingGroup(Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v2

    .line 100
    .restart local v2    # "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    if-eqz v2, :cond_2

    .line 101
    const-string v3, "LaunchStoreMainGroupExecutor"

    const-string v4, "launch top chart"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    goto :goto_0

    .line 105
    .end local v2    # "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_4
    const-string v3, "NewRelease"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 106
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mStoreFragment:Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 107
    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;->getStoreMaingGroup(Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v2

    .line 108
    .restart local v2    # "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    if-eqz v2, :cond_2

    .line 109
    const-string v3, "LaunchStoreMainGroupExecutor"

    const-string v4, "launch new release"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    goto :goto_0

    .line 113
    .end local v2    # "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_5
    const-string v3, "MusicCategory"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    const-string v3, "LaunchStoreMainGroupExecutor"

    const-string v4, "launch Music category"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mStoreFragment:Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;->getMusicCategoryGenreList()Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    .local v0, "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveMusicCategory(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto :goto_0

    .line 121
    .end local v0    # "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-string v3, "RadioStationsList"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mStoreFragment:Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->RECOMMEND_RADIOS:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 123
    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;->getStoreMaingGroup(Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v2

    .line 124
    .restart local v2    # "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    if-eqz v2, :cond_2

    .line 125
    const-string v3, "LaunchStoreMainGroupExecutor"

    const-string v4, "launch radios"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->RECOMMEND_RADIOS:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 127
    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 7
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 55
    const-string v4, "LAUNCH_STORE_MAIN_GROUP"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 57
    const-string v4, "LaunchStoreMainGroupExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute() -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    invoke-interface {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 61
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mStoreFragment:Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;

    invoke-interface {v4}, Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;->isLoadFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 62
    iput-boolean v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mIsCallSub:Z

    .line 63
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mStoreFragment:Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;

    invoke-interface {v3, p0}, Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;->setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 80
    :cond_0
    :goto_0
    return v2

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "state":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->excuteCommand(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const-string v3, "MagazineList"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "MusicCategory"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    :cond_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 75
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .end local v1    # "state":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 80
    goto :goto_0
.end method

.method public loadFinished()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->excuteCommand(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 146
    :cond_0
    return-void
.end method
