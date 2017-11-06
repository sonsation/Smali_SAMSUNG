.class Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;
.super Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;
.source "SeslViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProxyEndCount:I

.field private mProxyStarted:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .prologue
    const/4 v0, 0x0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 123
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 124
    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->onEnd()V

    .line 151
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 132
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    goto :goto_0
.end method

.method onEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    .line 139
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 140
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;->this$0:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->onAnimationsEnded()V

    .line 141
    return-void
.end method
