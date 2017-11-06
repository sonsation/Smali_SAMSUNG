.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "SeslAbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field private final mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 1
    .param p1, "sv"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 9741
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9742
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    .line 9743
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9747
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .line 9748
    .local v0, "sv":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    if-eqz v0, :cond_0

    .line 9749
    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Landroid/os/Message;)V

    .line 9751
    :cond_0
    return-void
.end method
