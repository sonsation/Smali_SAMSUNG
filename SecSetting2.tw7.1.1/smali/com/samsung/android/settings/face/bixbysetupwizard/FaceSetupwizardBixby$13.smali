.class Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$13;
.super Ljava/lang/Object;
.source "FaceSetupwizardBixby.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->showFaceErrorDialog(Ljava/lang/CharSequence;)V
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
    .line 952
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$13;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 954
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$13;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setEnrollResult(I)V

    .line 955
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$13;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap6(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    .line 956
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$13;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-set0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z

    .line 953
    return-void
.end method
