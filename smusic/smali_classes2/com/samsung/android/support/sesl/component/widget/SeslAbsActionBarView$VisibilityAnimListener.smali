.class public Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "SeslAbsActionBarView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 301
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mVisibilityAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 295
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->access$101(Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->access$001(Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;I)V

    .line 287
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 288
    return-void
.end method

.method public withFinalVisibility(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;I)Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;
    .locals 1
    .param p1, "animation"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .param p2, "visibility"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->mVisibilityAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 280
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 281
    return-object p0
.end method
