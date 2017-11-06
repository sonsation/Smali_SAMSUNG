.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 7055
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7058
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 7059
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCachingActive:Z

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCachingStarted:Z

    .line 7060
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$4500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V

    .line 7061
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 7062
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$4600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V

    .line 7064
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7065
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 7068
    :cond_1
    return-void
.end method
