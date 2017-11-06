.class Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;
.super Ljava/lang/Object;
.source "SocialAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    .prologue
    .line 401
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iput-object p2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 405
    :try_start_0
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$500(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/SocialAuthManager;

    move-result-object v2

    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->val$params:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lorg/brickred/socialauth/SocialAuthManager;->connect(Ljava/util/Map;)Lorg/brickred/socialauth/AuthProvider;

    move-result-object v0

    .line 409
    .local v0, "auth":Lorg/brickred/socialauth/AuthProvider;
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "yammer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    .line 410
    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "salesforce"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 411
    :cond_0
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2, v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$600(Lorg/brickred/socialauth/android/SocialAuthDialog;Lorg/brickred/socialauth/AuthProvider;)V

    .line 413
    :cond_1
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$800(Lorg/brickred/socialauth/android/SocialAuthDialog;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2$1;

    invoke-direct {v3, p0}, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2$1;-><init>(Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v0    # "auth":Lorg/brickred/socialauth/AuthProvider;
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$100(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v2

    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthError;

    const-string v4, "Could not connect using SocialAuth"

    invoke-direct {v3, v4, v1}, Lorg/brickred/socialauth/android/SocialAuthError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Lorg/brickred/socialauth/android/DialogListener;->onError(Lorg/brickred/socialauth/android/SocialAuthError;)V

    goto :goto_0
.end method
