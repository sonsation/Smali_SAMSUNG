.class Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$3;
.super Ljava/lang/Object;
.source "AlbumCoverView.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->initializeView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$3;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrossFadeCompleted(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$3;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$302(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Z)Z

    .line 308
    return-void
.end method
