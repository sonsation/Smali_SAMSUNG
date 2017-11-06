.class Lcom/samsung/android/app/music/milk/share/Twitter$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Lorg/brickred/socialauth/android/DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/Twitter;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/Twitter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/Twitter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/Twitter;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Twitter$1;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialize : Back to initialize."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter$1;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$100(Lcom/samsung/android/app/music/milk/share/Twitter;)V

    .line 111
    return-void
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialize : Cancel to initialize."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter$1;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$100(Lcom/samsung/android/app/music/milk/share/Twitter;)V

    .line 105
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const-string v1, ""

    .line 80
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter$1;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$200(Lcom/samsung/android/app/music/milk/share/Twitter;)Lorg/brickred/socialauth/android/SocialAuthAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->getUserProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    .line 81
    .local v0, "profile":Lorg/brickred/socialauth/Profile;
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Lorg/brickred/socialauth/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter$1;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.settings.twitter_is_signed"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter$1;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.settings.twitter_is_signed"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter$1;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Twitter$1;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$300(Lcom/samsung/android/app/music/milk/share/Twitter;)Lcom/samsung/android/app/music/common/model/share/ShareData;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/Twitter$1;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/share/Twitter;->getSnsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/milk/share/Twitter;->showEditDialog(Lcom/samsung/android/app/music/common/model/share/ShareData;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter$1;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$100(Lcom/samsung/android/app/music/milk/share/Twitter;)V

    goto :goto_0
.end method

.method public onError(Lorg/brickred/socialauth/android/SocialAuthError;)V
    .locals 2
    .param p1, "arg0"    # Lorg/brickred/socialauth/android/SocialAuthError;

    .prologue
    .line 73
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialize >> Error to initialize."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter$1;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$100(Lcom/samsung/android/app/music/milk/share/Twitter;)V

    .line 75
    return-void
.end method
