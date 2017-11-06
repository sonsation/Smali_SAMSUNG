.class Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;
.super Landroid/database/ContentObserver;
.source "AlbumTrackCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelfContentObserver"
.end annotation


# instance fields
.field final mCursor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)V
    .locals 1
    .param p1, "cursor"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 733
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    .line 734
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 743
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    .line 744
    .local v0, "cursor":Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
    if-eqz v0, :cond_0

    .line 745
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onChange(Z)V

    .line 747
    :cond_0
    return-void
.end method
