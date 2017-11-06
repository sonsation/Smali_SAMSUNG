.class Lcom/samsung/android/app/music/service/milk/LoginManager$1;
.super Lcom/samsung/android/app/music/service/milk/net/subscriber/SubscriberAdapter;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/LoginManager;->requestLogin(Landroid/content/Context;IIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

.field final synthetic val$appId:I

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/LoginManager;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$1;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$1;->val$appId:I

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$1;->val$requestId:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/net/subscriber/SubscriberAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/milk/net/subscriber/SubscriberAdapter;->onError(Ljava/lang/Throwable;)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$1;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$000(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->setUserStatus(I)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$1;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$100(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$1;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$100(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$1;->val$appId:I

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$1;->val$requestId:I

    const/4 v3, 0x3

    const/4 v4, 0x5

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->invokeBroadcast(IIIILandroid/content/Intent;)V

    .line 279
    :cond_0
    return-void
.end method
