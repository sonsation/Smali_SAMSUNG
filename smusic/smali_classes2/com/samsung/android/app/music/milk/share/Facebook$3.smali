.class Lcom/samsung/android/app/music/milk/share/Facebook$3;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/Facebook;->shareFacebook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/Facebook;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/Facebook;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/Facebook;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Facebook$3;->this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 392
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 393
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 394
    .local v1, "postId":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 395
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/Facebook;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shareDialog >> PostId is null."

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_1
    return-void

    .line 393
    .end local v1    # "postId":Ljava/lang/String;
    :cond_0
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 397
    .restart local v1    # "postId":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Facebook$3;->this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/share/Facebook;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Facebook$3;->this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/share/Facebook;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0454

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 398
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
