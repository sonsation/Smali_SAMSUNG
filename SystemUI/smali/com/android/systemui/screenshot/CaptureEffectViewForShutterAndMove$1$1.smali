.class Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1$1;
.super Ljava/lang/Object;
.source "CaptureEffectViewForShutterAndMove.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1$1;->this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1$1;->this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;

    iget-object v0, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    iget-object v0, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1$1;->this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;

    iget-object v0, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    iget-object v0, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->onFinish()V

    .line 88
    :cond_0
    return-void
.end method
