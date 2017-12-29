.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$8;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setEditBoxListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$8;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$8;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get7(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$8;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getRemaingTimeToUnlock()J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap3(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;IJ)V

    .line 466
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$8;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 457
    return-void
.end method
