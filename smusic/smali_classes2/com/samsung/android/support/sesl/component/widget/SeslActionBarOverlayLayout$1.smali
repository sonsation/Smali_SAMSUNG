.class Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$1;
.super Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;
.source "SeslActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 107
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 100
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 101
    return-void
.end method
