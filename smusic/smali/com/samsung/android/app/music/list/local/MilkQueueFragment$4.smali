.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$4;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setHeader(Landroid/view/View;Z)V
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
    .line 555
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$600(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 559
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$600(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 560
    return-void
.end method
