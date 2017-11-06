.class final Lcom/samsung/android/app/music/common/settings/VersionManager$1;
.super Ljava/lang/Thread;
.source "VersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/settings/VersionManager;->check(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/VersionManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/VersionManager$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;->clearPlaylistGarbageData(Landroid/content/Context;I)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/VersionManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/VersionManager$1;->val$context:Landroid/content/Context;

    .line 48
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v2

    .line 47
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->clearDuplicatedFavoriteTracks(Landroid/content/Context;J)V

    .line 49
    return-void
.end method
