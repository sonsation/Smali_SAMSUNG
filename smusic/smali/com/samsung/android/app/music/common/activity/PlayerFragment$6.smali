.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$6;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;->initializeViews(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

.field final synthetic val$seekController:Lcom/samsung/android/app/music/common/player/SeekController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Lcom/samsung/android/app/music/common/player/SeekController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$6;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$6;->val$seekController:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(II)V
    .locals 2
    .param p1, "scrollState"    # I
    .param p2, "position"    # I

    .prologue
    .line 608
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$6;->val$seekController:Lcom/samsung/android/app/music/common/player/SeekController;

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 609
    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/player/SeekController;->setSeekTouchEnabled(Z)V

    .line 610
    return-void

    .line 608
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
