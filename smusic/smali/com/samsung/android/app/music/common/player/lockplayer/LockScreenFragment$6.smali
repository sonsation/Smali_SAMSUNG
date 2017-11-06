.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$6;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->maxTransVI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

.field final synthetic val$blurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$6;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$6;->val$blurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$6;->val$blurImageView:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 371
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 373
    return-void
.end method
