.class public Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "AddToNowPlayingTask.java"


# instance fields
.field private mEnqueueAction:I

.field private mList:[J


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JZ)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "list"    # [J
    .param p3, "finish"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mList:[J

    .line 31
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getEnqueueOption()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mEnqueueAction:I

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mEnqueueAction:I

    goto :goto_0
.end method

.method private makeSongListToAdd(Landroid/content/Context;[J)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # [J

    .prologue
    const/16 v9, 0x2710

    const/4 v8, 0x0

    .line 71
    array-length v3, p2

    .line 73
    .local v3, "size":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicQueueCountFromService()I

    move-result v0

    .line 74
    .local v0, "base":I
    add-int v5, v0, v3

    if-le v5, v9, :cond_0

    .line 75
    const v5, 0x7f0a020a

    .line 76
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 77
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 76
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "toastMessage":Ljava/lang/String;
    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 79
    if-lt v0, v9, :cond_1

    .line 80
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mList:[J

    .line 90
    .end local v4    # "toastMessage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local v4    # "toastMessage":Ljava/lang/String;
    :cond_1
    rsub-int v1, v0, 0x2710

    .line 86
    .local v1, "maxSize":I
    new-array v2, v1, [J

    .line 87
    .local v2, "newIds":[J
    invoke-static {p2, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iput-object v2, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mList:[J

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mList:[J

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mList:[J

    iget v1, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mEnqueueAction:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->addQueue([JI)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mList:[J

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mList:[J

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->mList:[J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->makeSongListToAdd(Landroid/content/Context;[J)V

    .line 43
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->onPreExecute()V

    .line 44
    return-void
.end method

.method protected setLoadingProgress()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 62
    .local v0, "message":Ljava/lang/String;
    return-object v0
.end method
