.class Lcom/android/systemui/statusbar/phone/StatusBarIconController$3;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarIconController;F)V

    .line 560
    return-void
.end method
