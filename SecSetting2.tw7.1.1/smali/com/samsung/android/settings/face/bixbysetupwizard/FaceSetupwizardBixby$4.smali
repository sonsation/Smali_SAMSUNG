.class Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$4;
.super Ljava/lang/Object;
.source "FaceSetupwizardBixby.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startPreviewImageEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$4;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$4;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get6(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$4;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get6(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 255
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 250
    return-void
.end method
