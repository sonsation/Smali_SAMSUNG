.class public abstract Lcom/android/launcher3/common/customer/PostPositionerBase;
.super Ljava/lang/Object;
.source "PostPositionerBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPositionerBase"


# instance fields
.field protected mAppState:Lcom/android/launcher3/LauncherAppState;

.field protected mContext:Landroid/content/Context;

.field protected mModelWorker:Landroid/os/Handler;

.field protected mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

.field protected mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/android/launcher3/common/customer/PostPositionProvider;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mModelWorker:Landroid/os/Handler;

    .line 41
    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mAppState:Lcom/android/launcher3/LauncherAppState;

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mModelWorker:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mModelWorker:Landroid/os/Handler;

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionerBase;->setup()V

    .line 57
    return-void
.end method


# virtual methods
.method public abstract addItem(Lcom/android/launcher3/common/customer/PostPositionItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
.end method

.method public checkFolderValidation()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 70
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderIdList()Ljava/util/Map;

    move-result-object v1

    .line 71
    .local v1, "idList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 72
    .local v0, "id":Ljava/lang/Long;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    const-string v5, "FolderId"

    invoke-virtual {v4, v7, v5}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    const-string v5, "PreloadedFolderId"

    .line 75
    invoke-virtual {v4, v7, v5}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/launcher3/common/customer/PostPositionerBase;->hasItem(JZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 78
    const-string v4, "PostPositionerBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " folder is not exist. so remove this from shared pref."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removeKey(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    const-string v5, "FolderReadyId"

    invoke-virtual {v4, v7, v5}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/launcher3/common/customer/PostPositionerBase;->hasItem(JZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    const-string v4, "PostPositionerBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " folder ready item is not exist. so remove this from shared pref."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removeKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    .end local v0    # "id":Ljava/lang/Long;
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public deleteFolder(JZ)V
    .locals 7
    .param p1, "folderId"    # J
    .param p3, "isReload"    # Z

    .prologue
    const-wide/32 v4, 0x1869f

    const/4 v3, 0x0

    .line 89
    if-eqz p3, :cond_1

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removeItemsInfo(Ljava/util/ArrayList;)V

    .line 121
    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getPreloadedFolderName(J)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "foldername":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 98
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderNameById(J)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 102
    if-eqz p3, :cond_3

    .line 103
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removePreloadedFolderId(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writePreloadedFolderId(Ljava/lang/String;J)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderName(J)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-nez v0, :cond_5

    .line 112
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderNameById(J)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    if-eqz p3, :cond_6

    .line 116
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removeFolderId(Ljava/lang/String;Z)V

    goto :goto_0

    .line 118
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method public getSharedPref()Lcom/android/launcher3/common/customer/PostPositionSharedPref;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    return-object v0
.end method

.method protected abstract hasItem(JZ)Z
.end method

.method protected abstract init()V
.end method

.method public resetItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmpName"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionerBase;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/customer/PostPositionProvider;->resetItem(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected abstract setup()V
.end method
