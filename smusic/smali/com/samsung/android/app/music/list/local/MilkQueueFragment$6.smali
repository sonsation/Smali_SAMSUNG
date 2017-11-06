.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setItemAnimator(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationsFinished()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$800(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$900(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6$1;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
