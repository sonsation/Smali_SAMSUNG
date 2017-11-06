.class final Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;
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
    name = "MessageListener"
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
    .line 253
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/share/Twitter;Lcom/samsung/android/app/music/milk/share/Twitter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/share/Twitter;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/share/Twitter$1;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;-><init>(Lcom/samsung/android/app/music/milk/share/Twitter;)V

    return-void
.end method


# virtual methods
.method public onError(Lorg/brickred/socialauth/android/SocialAuthError;)V
    .locals 0
    .param p1, "e"    # Lorg/brickred/socialauth/android/SocialAuthError;

    .prologue
    .line 270
    invoke-virtual {p1}, Lorg/brickred/socialauth/android/SocialAuthError;->printStackTrace()V

    .line 271
    return-void
.end method

.method public onExecute(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x1

    .line 257
    move-object v0, p2

    .line 258
    .local v0, "status":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_1

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0454

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0451

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 263
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageListener : Error to share via twitter. errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onExecute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;->onExecute(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
