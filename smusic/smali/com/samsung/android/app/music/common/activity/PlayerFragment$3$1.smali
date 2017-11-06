.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$3$1;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment$3;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/activity/PlayerFragment$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment$3;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$3$1;->this$1:Lcom/samsung/android/app/music/common/activity/PlayerFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$3$1;->this$1:Lcom/samsung/android/app/music/common/activity/PlayerFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$3;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$100(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->adjustPlayerLayout(Z)V

    .line 430
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$3$1;->this$1:Lcom/samsung/android/app/music/common/activity/PlayerFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$3;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$200(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    .line 431
    return-void
.end method
