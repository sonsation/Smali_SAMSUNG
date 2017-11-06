.class Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2$1;
.super Ljava/lang/Object;
.source "SocialAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;


# direct methods
.method constructor <init>(Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;)V
    .locals 0
    .param p1, "this$2"    # Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;

    .prologue
    .line 413
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2$1;->this$2:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 417
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2$1;->this$2:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v1}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$700(Lorg/brickred/socialauth/android/SocialAuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2$1;->this$2:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v1}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$700(Lorg/brickred/socialauth/android/SocialAuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2$1;->this$2:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v1}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$700(Lorg/brickred/socialauth/android/SocialAuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 420
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "provider"

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2$1;->this$2:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2$1;->this$2:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v1}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$100(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/brickred/socialauth/android/DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 423
    return-void
.end method
