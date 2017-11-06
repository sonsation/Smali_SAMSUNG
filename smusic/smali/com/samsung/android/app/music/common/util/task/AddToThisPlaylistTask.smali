.class public Lcom/samsung/android/app/music/common/util/task/AddToThisPlaylistTask;
.super Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;
.source "AddToThisPlaylistTask.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JJ)V
    .locals 7
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "list"    # [J
    .param p3, "playlistId"    # J

    .prologue
    .line 8
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;-><init>(Landroid/app/Activity;[JJZ)V

    .line 9
    return-void
.end method


# virtual methods
.method protected setLoadingProgress()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method
