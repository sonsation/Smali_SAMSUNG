.class final Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor$SearchMusicListener;
.super Ljava/lang/Object;
.source "PlayFolderExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchMusicListener"
.end annotation


# instance fields
.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor$SearchMusicListener;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .param p2, "x1"    # Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor$SearchMusicListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    return-void
.end method


# virtual methods
.method public onSearchFinished(ILjava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "listType"    # I
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "audioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 78
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 79
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onSearchFinished() - There is a no matched folder."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v4, "Folders"

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 81
    .local v3, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v4, "keyword"

    const-string v5, "Match"

    const-string v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor$SearchMusicListener;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v7, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 111
    :goto_0
    return-void

    .line 88
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 89
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onSearchFinished() - This folder is empty."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v4, "Folders"

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v4, "Contents"

    const-string v5, "Exist"

    const-string v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor$SearchMusicListener;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v7, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 97
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSearchFinished() - ids: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 98
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", audioIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 100
    .local v1, "audioIdsSize":I
    new-array v0, v1, [J

    .line 101
    .local v0, "audioIdsList":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 102
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    :cond_4
    const v4, 0x10007

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 105
    invoke-static {v4, v5, v0, v7, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(ILjava/lang/String;[JII)V

    .line 107
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v4, "Folders"

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v4, "Contents"

    const-string v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayFolderExecutor$SearchMusicListener;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto/16 :goto_0
.end method
