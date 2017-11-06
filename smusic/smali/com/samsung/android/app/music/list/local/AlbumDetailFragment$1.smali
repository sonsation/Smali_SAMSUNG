.class Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$1;
.super Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;
.source "AlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/net/Uri;
    .param p4, "x2"    # [Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # [Ljava/lang/String;
    .param p7, "x5"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLoadInBackground()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 200
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;-><init>(Landroid/database/Cursor;)V

    .line 203
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onLoadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$1;->onLoadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
