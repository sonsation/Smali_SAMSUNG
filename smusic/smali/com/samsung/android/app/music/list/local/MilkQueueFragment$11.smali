.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$11;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
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
    .line 807
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$11;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$11;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$11;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$1200(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 811
    return-void
.end method
