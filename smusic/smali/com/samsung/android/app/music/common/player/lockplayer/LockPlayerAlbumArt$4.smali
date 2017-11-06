.class Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$4;
.super Ljava/lang/Object;
.source "LockPlayerAlbumArt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

.field final synthetic val$albumId:J

.field final synthetic val$cpAttrs:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;IJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$4;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    iput p2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$4;->val$cpAttrs:I

    iput-wide p3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$4;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$4;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    iget v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$4;->val$cpAttrs:I

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$4;->val$albumId:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->access$600(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;IJ)V

    .line 266
    return-void
.end method
