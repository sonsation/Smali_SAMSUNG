.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$9;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->verifyPassword()V
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
    .line 487
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$9;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 489
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$9;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    iget-object v1, v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    .line 490
    const-string/jumbo v2, "input_method"

    .line 489
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 491
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$9;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$9;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    const/4 v2, 0x1

    iput v2, v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    .line 495
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$9;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    .line 496
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$9;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    .line 488
    return-void
.end method
