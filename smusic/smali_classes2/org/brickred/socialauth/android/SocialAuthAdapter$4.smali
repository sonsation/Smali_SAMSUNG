.class Lorg/brickred/socialauth/android/SocialAuthAdapter$4;
.super Ljava/lang/Object;
.source "SocialAuthAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthAdapter;->startDialogAuth(Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$provider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;


# direct methods
.method constructor <init>(Lorg/brickred/socialauth/android/SocialAuthAdapter;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .prologue
    .line 634
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    iput-object p2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->val$provider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    iput-object p3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 639
    :try_start_0
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$500(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/SocialAuthManager;

    move-result-object v3

    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->val$provider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v4}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->val$provider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->getCallBackUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/brickred/socialauth/SocialAuthManager;->getAuthenticationUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&type=user_agent&display=touch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$402(Lorg/brickred/socialauth/android/SocialAuthAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 642
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$600(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$4$1;

    invoke-direct {v2, p0}, Lorg/brickred/socialauth/android/SocialAuthAdapter$4$1;-><init>(Lorg/brickred/socialauth/android/SocialAuthAdapter$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-void

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$300(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v1

    new-instance v2, Lorg/brickred/socialauth/android/SocialAuthError;

    const-string v3, "URL Authentication error"

    invoke-direct {v2, v3, v0}, Lorg/brickred/socialauth/android/SocialAuthError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lorg/brickred/socialauth/android/DialogListener;->onError(Lorg/brickred/socialauth/android/SocialAuthError;)V

    goto :goto_0
.end method
