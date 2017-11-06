.class Lcom/samsung/android/app/music/milk/share/Facebook$1;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/Facebook;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/Facebook;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/Facebook;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/Facebook;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Facebook$1;->this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook$1;->this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/share/Facebook;->onSnsSignOut()V

    .line 108
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook$1;->this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/share/Facebook;->onSnsSignOut()V

    .line 113
    instance-of v0, p1, Lcom/facebook/FacebookAuthorizationException;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook$1;->this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/share/Facebook;->signOut(Z)V

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->printStackTrace()V

    .line 117
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 4
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 94
    .local v0, "token":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "publish_actions"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Facebook$1;->this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Facebook$1;->this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/share/Facebook;->access$000(Lcom/samsung/android/app/music/milk/share/Facebook;)Lcom/samsung/android/app/music/common/model/share/ShareData;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Facebook$1;->this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/share/Facebook;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/share/Facebook;->getSnsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/share/Facebook;->showEditDialog(Lcom/samsung/android/app/music/common/model/share/ShareData;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/Facebook$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
