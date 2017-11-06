.class Lorg/brickred/socialauth/android/SocialAuthDialog$1;
.super Ljava/lang/Object;
.source "SocialAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;


# direct methods
.method constructor <init>(Lorg/brickred/socialauth/android/SocialAuthDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;

    .prologue
    .line 165
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->stopLoading()V

    .line 169
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$100(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/brickred/socialauth/android/DialogListener;->onBack()V

    .line 170
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->dismiss()V

    .line 171
    return-void
.end method
