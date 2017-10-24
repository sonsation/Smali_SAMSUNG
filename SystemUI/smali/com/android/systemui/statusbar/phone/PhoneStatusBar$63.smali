.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startUnlockAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clockOriginalScaleX:F

.field clockOriginalScaleY:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$bottomArea:Landroid/view/View;

.field final synthetic val$clock:Landroid/view/View;

.field final synthetic val$keyguardBackground:Landroid/view/View;

.field final synthetic val$keyguardHeader:Landroid/view/View;

.field final synthetic val$noti:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "val$clock"    # Landroid/view/View;
    .param p3, "val$noti"    # Landroid/view/View;
    .param p4, "val$keyguardHeader"    # Landroid/view/View;
    .param p5, "val$bottomArea"    # Landroid/view/View;
    .param p6, "val$keyguardBackground"    # Landroid/view/View;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6007
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$clock:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$noti:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$keyguardHeader:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$bottomArea:Landroid/view/View;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$keyguardBackground:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6008
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->clockOriginalScaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->clockOriginalScaleY:F

    .line 6007
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 6047
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6024
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$clock:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 6025
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$clock:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->clockOriginalScaleX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 6026
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$clock:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->clockOriginalScaleY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 6027
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$noti:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 6028
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$noti:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 6029
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$noti:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 6030
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$keyguardHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 6031
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$bottomArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6032
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$bottomArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 6033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$bottomArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 6034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$bottomArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 6037
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$keyguardBackground:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 6038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$keyguardBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 6039
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$keyguardBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 6040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$keyguardBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 6042
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap25(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 6043
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set22(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 6023
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 6018
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 6013
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$clock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->clockOriginalScaleX:F

    .line 6014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->val$clock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$63;->clockOriginalScaleY:F

    .line 6011
    return-void
.end method
