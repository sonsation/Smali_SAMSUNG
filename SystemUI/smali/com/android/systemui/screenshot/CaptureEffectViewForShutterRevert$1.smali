.class Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;
.super Ljava/lang/Object;
.source "CaptureEffectViewForShutterRevert.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->show(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;

    iget-object v0, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 83
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 69
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1$1;-><init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;)V

    .line 76
    const-wide/16 v2, 0x18f

    .line 69
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    return-void
.end method
