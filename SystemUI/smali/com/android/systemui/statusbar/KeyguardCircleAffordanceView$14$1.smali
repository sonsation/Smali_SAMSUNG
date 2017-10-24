.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14$1;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;->onStartedWakingUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14$1;->this$1:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14$1;->this$1:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set28(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1672
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1668
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14$1;->this$1:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set28(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1663
    return-void
.end method
