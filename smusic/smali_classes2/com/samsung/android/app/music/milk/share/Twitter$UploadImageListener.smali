.class final Lcom/samsung/android/app/music/milk/share/Twitter$UploadImageListener;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Lorg/brickred/socialauth/android/SocialAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/share/Twitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UploadImageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/brickred/socialauth/android/SocialAuthListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/Twitter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/share/Twitter;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Twitter$UploadImageListener;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/share/Twitter;Lcom/samsung/android/app/music/milk/share/Twitter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/share/Twitter;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/share/Twitter$1;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/Twitter$UploadImageListener;-><init>(Lcom/samsung/android/app/music/milk/share/Twitter;)V

    return-void
.end method


# virtual methods
.method public onError(Lorg/brickred/socialauth/android/SocialAuthError;)V
    .locals 0
    .param p1, "e"    # Lorg/brickred/socialauth/android/SocialAuthError;

    .prologue
    .line 298
    invoke-virtual {p1}, Lorg/brickred/socialauth/android/SocialAuthError;->printStackTrace()V

    .line 299
    return-void
.end method

.method public onExecute(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Integer;

    .prologue
    .line 278
    move-object v1, p2

    .line 280
    .local v1, "status":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_0

    .line 281
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_1

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter$UploadImageListener;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Twitter$UploadImageListener;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0454

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 294
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter$UploadImageListener;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Twitter$UploadImageListener;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0451

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 287
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UploadImageListener : Error to share via twitter. errorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 289
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UploadImageListener : Error status is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onExecute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 274
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/share/Twitter$UploadImageListener;->onExecute(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
