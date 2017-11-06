.class Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullPlayerAlbumArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->showFakeViewForShortTime(ZIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    return-void
.end method
