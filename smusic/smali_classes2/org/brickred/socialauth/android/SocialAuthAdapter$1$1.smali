.class Lorg/brickred/socialauth/android/SocialAuthAdapter$1$1;
.super Ljava/lang/Object;
.source "SocialAuthAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$1;


# direct methods
.method constructor <init>(Lorg/brickred/socialauth/android/SocialAuthAdapter$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$1;

    .prologue
    .line 358
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 361
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$1;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$100(Lorg/brickred/socialauth/android/SocialAuthAdapter;)[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "share_mail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$1;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .line 362
    invoke-static {v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$100(Lorg/brickred/socialauth/android/SocialAuthAdapter;)[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "share_mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "provider"

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$1;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$100(Lorg/brickred/socialauth/android/SocialAuthAdapter;)[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$1;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$300(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/brickred/socialauth/android/DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 372
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 373
    return-void

    .line 370
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$1;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$1;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->val$ctx:Landroid/content/Context;

    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$1$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$1;

    iget-object v3, v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$1;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$100(Lorg/brickred/socialauth/android/SocialAuthAdapter;)[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v1, v2, v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authorize(Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V

    goto :goto_0
.end method
