.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$7;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$7;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$7;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$800(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->openViewIfHasLyrics(Z)V

    .line 622
    return-void
.end method
