.class Lorg/brickred/socialauth/android/SocialAuthAdapter$5;
.super Ljava/lang/Object;
.source "SocialAuthAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthAdapter;->connectProvider(Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

.field final synthetic val$accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/brickred/socialauth/android/SocialAuthAdapter;Lorg/brickred/socialauth/util/AccessGrant;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .prologue
    .line 714
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    iput-object p2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->val$accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    iput-object p3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 720
    :try_start_0
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$500(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/SocialAuthManager;

    move-result-object v2

    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->val$accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v2, v3}, Lorg/brickred/socialauth/SocialAuthManager;->connect(Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/AuthProvider;

    .line 723
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->getCurrentProvider()Lorg/brickred/socialauth/AuthProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/brickred/socialauth/AuthProvider;->getUserProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/Profile;->getValidatedId()Ljava/lang/String;

    .line 725
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$600(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$5$1;

    invoke-direct {v3, p0}, Lorg/brickred/socialauth/android/SocialAuthAdapter$5$1;-><init>(Lorg/brickred/socialauth/android/SocialAuthAdapter$5;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$300(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v2

    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthError;

    const-string v4, "Token Error"

    invoke-direct {v3, v4, v0}, Lorg/brickred/socialauth/android/SocialAuthError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Lorg/brickred/socialauth/android/DialogListener;->onError(Lorg/brickred/socialauth/android/SocialAuthError;)V

    .line 736
    const-string v2, "SocialAuthAdapter"

    const-string v3, "Starting webview for authentication for new Token"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    new-instance v3, Lorg/brickred/socialauth/SocialAuthManager;

    invoke-direct {v3}, Lorg/brickred/socialauth/SocialAuthManager;-><init>()V

    invoke-static {v2, v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$502(Lorg/brickred/socialauth/android/SocialAuthAdapter;Lorg/brickred/socialauth/SocialAuthManager;)Lorg/brickred/socialauth/SocialAuthManager;

    .line 742
    :try_start_1
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->val$ctx:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$800(Lorg/brickred/socialauth/android/SocialAuthAdapter;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 746
    :goto_1
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v4}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$700(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$900(Lorg/brickred/socialauth/android/SocialAuthAdapter;Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V

    goto :goto_0

    .line 743
    :catch_1
    move-exception v1

    .line 744
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
