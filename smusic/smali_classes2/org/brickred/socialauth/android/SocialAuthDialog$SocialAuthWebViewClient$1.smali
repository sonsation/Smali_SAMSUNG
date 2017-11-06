.class Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;
.super Ljava/lang/Object;
.source "SocialAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
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
    .line 248
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iput-object p2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 253
    :try_start_0
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v3, v3, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "facebook"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    const-string v3, "SocialAuth Android"

    const-string/jumbo v4, "success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v3, v3, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->val$params:Ljava/util/Map;

    invoke-static {v3, v4}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$400(Lorg/brickred/socialauth/android/SocialAuthDialog;Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    .line 257
    .local v0, "accessGrant":Lorg/brickred/socialauth/util/AccessGrant;
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v3, v3, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$500(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/SocialAuthManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/brickred/socialauth/SocialAuthManager;->connect(Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/AuthProvider;

    move-result-object v1

    .line 258
    .local v1, "auth":Lorg/brickred/socialauth/AuthProvider;
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v3, v3, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3, v1}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$600(Lorg/brickred/socialauth/android/SocialAuthDialog;Lorg/brickred/socialauth/AuthProvider;)V

    .line 266
    .end local v0    # "accessGrant":Lorg/brickred/socialauth/util/AccessGrant;
    :goto_0
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v3, v3, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$800(Lorg/brickred/socialauth/android/SocialAuthDialog;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1$1;

    invoke-direct {v4, p0}, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1$1;-><init>(Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    .end local v1    # "auth":Lorg/brickred/socialauth/AuthProvider;
    :goto_1
    return-void

    .line 262
    :cond_0
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v3, v3, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$500(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/SocialAuthManager;

    move-result-object v3

    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->val$params:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lorg/brickred/socialauth/SocialAuthManager;->connect(Ljava/util/Map;)Lorg/brickred/socialauth/AuthProvider;

    move-result-object v1

    .line 263
    .restart local v1    # "auth":Lorg/brickred/socialauth/AuthProvider;
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v3, v3, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3, v1}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$600(Lorg/brickred/socialauth/android/SocialAuthDialog;Lorg/brickred/socialauth/AuthProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v1    # "auth":Lorg/brickred/socialauth/AuthProvider;
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v3, v3, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$100(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v3

    new-instance v4, Lorg/brickred/socialauth/android/SocialAuthError;

    const-string v5, "Unknown Error"

    invoke-direct {v4, v5, v2}, Lorg/brickred/socialauth/android/SocialAuthError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v3, v4}, Lorg/brickred/socialauth/android/DialogListener;->onError(Lorg/brickred/socialauth/android/SocialAuthError;)V

    goto :goto_1
.end method
