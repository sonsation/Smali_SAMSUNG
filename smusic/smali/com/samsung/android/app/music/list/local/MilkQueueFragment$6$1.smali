.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6$1;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;->onAnimationsFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6$1;->this$1:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6$1;->this$1:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->finishActionMode()V

    .line 595
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6$1;->this$1:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$802(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)Z

    .line 596
    return-void
.end method
