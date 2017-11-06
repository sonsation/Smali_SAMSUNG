.class Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$2;
.super Ljava/lang/Object;
.source "SeslActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 110
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mActionBarTop:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->translationY(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mTopAnimatorListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    .line 114
    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 115
    return-void
.end method
