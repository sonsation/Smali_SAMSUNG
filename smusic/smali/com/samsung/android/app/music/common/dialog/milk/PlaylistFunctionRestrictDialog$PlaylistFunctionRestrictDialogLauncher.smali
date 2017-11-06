.class public Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog$PlaylistFunctionRestrictDialogLauncher;
.super Ljava/lang/Object;
.source "PlaylistFunctionRestrictDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistFunctionRestrictDialogLauncher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 32
    move-object v0, p0

    .line 33
    .local v0, "context":Landroid/content/Context;
    const-string v4, "key_playlist_function_restrict_inform"

    .line 34
    invoke-static {v0, v4, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 35
    .local v1, "informed":Z
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->hasLocalPlaylistOnly(Landroid/content/Context;)Z

    move-result v2

    .line 36
    .local v2, "localPlaylistOnly":Z
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 37
    new-instance v3, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;

    invoke-direct {v3}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;-><init>()V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "functionRestrict"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 39
    const/4 v3, 0x1

    .line 41
    :cond_0
    return v3
.end method
