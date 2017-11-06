.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$10;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;->updatePlayerViewsBySurfaces(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

.field final synthetic val$album:Landroid/view/View;

.field final synthetic val$uhqUpscalerTag:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$10;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$10;->val$album:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$10;->val$uhqUpscalerTag:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1058
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1059
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$10;->val$album:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1060
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$10;->val$uhqUpscalerTag:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$10;->val$uhqUpscalerTag:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1063
    :cond_0
    return-void
.end method
