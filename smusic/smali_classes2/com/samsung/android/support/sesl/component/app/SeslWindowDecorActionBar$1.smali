.class Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;
.super Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;
.source "SeslWindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentAnimations:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setTranslationY(F)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->setTransitioning(Z)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->requestApplyInsets()V

    .line 135
    :cond_1
    return-void
.end method
