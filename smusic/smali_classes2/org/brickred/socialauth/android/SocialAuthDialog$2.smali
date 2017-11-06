.class Lorg/brickred/socialauth/android/SocialAuthDialog$2;
.super Ljava/lang/Object;
.source "SocialAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 174
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$2;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 177
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$2;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->stopLoading()V

    .line 179
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$2;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->dismiss()V

    .line 180
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$2;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$100(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/brickred/socialauth/android/DialogListener;->onBack()V

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
