.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;
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
    .line 274
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 278
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 281
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
