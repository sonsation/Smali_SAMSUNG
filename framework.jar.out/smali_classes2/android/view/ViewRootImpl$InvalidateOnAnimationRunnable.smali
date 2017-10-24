.class final Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InvalidateOnAnimationRunnable"
.end annotation


# instance fields
.field private mPosted:Z

.field private mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

.field private mTempViews:[Landroid/view/View;

.field private final mViewRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$AttachInfo$InvalidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 7154
    iput-object p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    .line 7158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7157
    iput-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    .line 7154
    return-void
.end method

.method private postIfNeededLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7230
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    if-nez v0, :cond_0

    .line 7231
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7232
    iput-boolean v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 7229
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7163
    monitor-enter p0

    .line 7164
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7165
    invoke-direct {p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->postIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 7162
    return-void

    .line 7163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .prologue
    .line 7170
    monitor-enter p0

    .line 7171
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7172
    invoke-direct {p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->postIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 7169
    return-void

    .line 7170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7177
    monitor-enter p0

    .line 7178
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7180
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_1

    .line 7181
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 7182
    .local v2, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v3, v2, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 7183
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7184
    invoke-virtual {v2}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    :cond_0
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 7188
    .end local v0    # "i":I
    .end local v2    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    .restart local v1    # "i":I
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7189
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7190
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 7176
    return-void

    .line 7177
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 7199
    monitor-enter p0

    .line 7200
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 7202
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7203
    .local v2, "viewCount":I
    if-eqz v2, :cond_0

    .line 7204
    iget-object v5, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    if-eqz v4, :cond_2

    .line 7205
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    .line 7204
    :goto_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/View;

    iput-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    .line 7206
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 7209
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7210
    .local v3, "viewRectCount":I
    if-eqz v3, :cond_1

    .line 7211
    iget-object v5, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    if-eqz v4, :cond_3

    .line 7212
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 7211
    :goto_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/View$AttachInfo$InvalidateInfo;

    iput-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 7213
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 7217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 7218
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 7219
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    aput-object v6, v4, v0

    .line 7217
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7205
    .end local v0    # "i":I
    .end local v3    # "viewRectCount":I
    :cond_2
    :try_start_1
    new-array v4, v2, [Landroid/view/View;

    goto :goto_0

    .line 7212
    .restart local v3    # "viewRectCount":I
    :cond_3
    new-array v4, v3, [Landroid/view/View$AttachInfo$InvalidateInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7199
    .end local v2    # "viewCount":I
    .end local v3    # "viewRectCount":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 7222
    .restart local v0    # "i":I
    .restart local v2    # "viewCount":I
    .restart local v3    # "viewRectCount":I
    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_5

    .line 7223
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    aget-object v1, v4, v0

    .line 7224
    .local v1, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v7, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v8, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 7225
    invoke-virtual {v1}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 7222
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7196
    .end local v1    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_5
    return-void
.end method
