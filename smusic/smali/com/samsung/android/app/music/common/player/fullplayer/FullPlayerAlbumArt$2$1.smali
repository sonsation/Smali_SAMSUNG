.class Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2$1;
.super Ljava/lang/Object;
.source "FullPlayerAlbumArt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2$1;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2$1;->this$1:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    return-void
.end method
