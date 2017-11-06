.class Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$1;
.super Ljava/lang/Object;
.source "SeslSwitchCompat.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

.field final synthetic val$newCheckedState:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$1;->val$newCheckedState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mPositionAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

    if-ne v0, p1, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$1;->val$newCheckedState:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setThumbPosition(F)V

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->mPositionAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;

    .line 1039
    :cond_0
    return-void

    .line 1036
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1042
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1030
    return-void
.end method
