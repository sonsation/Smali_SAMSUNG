.class Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$3;
.super Ljava/lang/Object;
.source "HeartFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->makeUpAndFadeInAnimation(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$3;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$3;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 1593
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1594
    return-void
.end method
