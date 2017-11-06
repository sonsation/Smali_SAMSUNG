.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$5;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
.source "SeslFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field final synthetic val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$5;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$5;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 1193
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$5;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$5;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimatingAway:Landroid/view/View;

    .line 1196
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$5;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$5;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$5;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mStateAfterAnimating:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    .line 1199
    :cond_0
    return-void
.end method
