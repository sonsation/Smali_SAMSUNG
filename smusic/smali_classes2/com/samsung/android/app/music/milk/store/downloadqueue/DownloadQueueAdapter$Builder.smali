.class public Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "DownloadQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public mDownlaodedSizeCol:Ljava/lang/String;

.field public mFileExtensionCol:Ljava/lang/String;

.field public mFileSizeCol:Ljava/lang/String;

.field public mIsDownloadingCol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 202
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mFileExtensionCol:Ljava/lang/String;

    .line 204
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mDownlaodedSizeCol:Ljava/lang/String;

    .line 206
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mFileSizeCol:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mIsDownloadingCol:Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;
    .locals 0

    .prologue
    .line 216
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDownlaodedSizeCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mDownlaodedSizeCol:Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFileExtenstionCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mFileExtensionCol:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFileSizeCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mFileSizeCol:Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIsDownloadingCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->mIsDownloadingCol:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
