.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "SeslAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
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
            "Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 1
    .param p1, "sv"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 9189
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9190
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    .line 9191
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9195
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .line 9196
    .local v0, "sv":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    if-eqz v0, :cond_0

    .line 9197
    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$5400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Landroid/os/Message;)V

    .line 9199
    :cond_0
    return-void
.end method
