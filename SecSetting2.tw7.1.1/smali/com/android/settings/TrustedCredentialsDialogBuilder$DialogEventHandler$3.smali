.class Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->addAndAnimateNewContent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->this$1:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->this$1:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->-get2(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 398
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->this$1:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->-get2(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    .line 399
    .local v0, "containerWidth":I
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->this$1:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->-get1(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/view/View;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 400
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->this$1:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->-get1(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 401
    const/4 v2, 0x0

    .line 400
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->this$1:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->-get0(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/app/Activity;

    move-result-object v2

    .line 403
    const v3, 0x10c000e

    .line 402
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 400
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 404
    const-wide/16 v2, 0xc8

    .line 400
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 394
    return-void
.end method
