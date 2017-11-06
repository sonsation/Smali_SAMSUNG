.class Lorg/brickred/socialauth/android/SocialAuthAdapter$6;
.super Ljava/lang/Object;
.source "SocialAuthAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthAdapter;->updateStatus(Ljava/lang/String;Lorg/brickred/socialauth/android/SocialAuthListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

.field final synthetic val$listener:Lorg/brickred/socialauth/android/SocialAuthListener;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$shareOption:Z


# direct methods
.method constructor <init>(Lorg/brickred/socialauth/android/SocialAuthAdapter;ZLjava/lang/String;Lorg/brickred/socialauth/android/SocialAuthListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .prologue
    .line 837
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    iput-boolean p2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->val$shareOption:Z

    iput-object p3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->val$listener:Lorg/brickred/socialauth/android/SocialAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 841
    :try_start_0
    iget-boolean v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->val$shareOption:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 842
    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$500(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/SocialAuthManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/brickred/socialauth/SocialAuthManager;->getConnectedProvidersIds()Ljava/util/List;

    move-result-object v0

    .line 843
    .local v0, "activeProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 844
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 845
    .local v3, "provider":Ljava/lang/String;
    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$500(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/SocialAuthManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/brickred/socialauth/SocialAuthManager;->getProvider(Ljava/lang/String;)Lorg/brickred/socialauth/AuthProvider;

    move-result-object v5

    iget-object v6, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->val$message:Ljava/lang/String;

    invoke-interface {v5, v6}, Lorg/brickred/socialauth/AuthProvider;->updateStatus(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v4

    .line 847
    .local v4, "response":Lorg/brickred/socialauth/util/Response;
    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$600(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lorg/brickred/socialauth/android/SocialAuthAdapter$6$1;

    invoke-direct {v6, p0, v4, v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter$6$1;-><init>(Lorg/brickred/socialauth/android/SocialAuthAdapter$6;Lorg/brickred/socialauth/util/Response;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 843
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 856
    .end local v0    # "activeProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "response":Lorg/brickred/socialauth/util/Response;
    :cond_0
    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-virtual {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->getCurrentProvider()Lorg/brickred/socialauth/AuthProvider;

    move-result-object v5

    iget-object v6, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->val$message:Ljava/lang/String;

    invoke-interface {v5, v6}, Lorg/brickred/socialauth/AuthProvider;->updateStatus(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v4

    .line 858
    .restart local v4    # "response":Lorg/brickred/socialauth/util/Response;
    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$600(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lorg/brickred/socialauth/android/SocialAuthAdapter$6$2;

    invoke-direct {v6, p0, v4}, Lorg/brickred/socialauth/android/SocialAuthAdapter$6$2;-><init>(Lorg/brickred/socialauth/android/SocialAuthAdapter$6;Lorg/brickred/socialauth/util/Response;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    .end local v4    # "response":Lorg/brickred/socialauth/util/Response;
    :cond_1
    :goto_1
    return-void

    .line 867
    :catch_0
    move-exception v1

    .line 868
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$300(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v5

    new-instance v6, Lorg/brickred/socialauth/android/SocialAuthError;

    const-string v7, "Message Not Posted"

    invoke-direct {v6, v7, v1}, Lorg/brickred/socialauth/android/SocialAuthError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v5, v6}, Lorg/brickred/socialauth/android/DialogListener;->onError(Lorg/brickred/socialauth/android/SocialAuthError;)V

    goto :goto_1
.end method
