.class Lcom/mapps/android/view/AdView$39;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->getIconImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$39;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$39;->val$urlStr:Ljava/lang/String;

    .line 2369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2372
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/mapps/android/view/AdView$39;->val$urlStr:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2373
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    .line 2374
    .local v2, "content":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Ljava/io/InputStream;

    move-object v4, v0

    .line 2375
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2378
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 2379
    iget-object v7, p0, Lcom/mapps/android/view/AdView$39;->this$0:Lcom/mapps/android/view/AdView;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/mapps/android/view/AdView$39;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v9}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdView;->access$88(Lcom/mapps/android/view/AdView;Landroid/graphics/drawable/Drawable;)V

    .line 2380
    iget-object v7, p0, Lcom/mapps/android/view/AdView$39;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v7}, Lcom/mapps/android/view/AdView;->access$89(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 2381
    .local v5, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/mapps/android/view/AdView$39;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v7}, Lcom/mapps/android/view/AdView;->access$89(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2386
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "content":Ljava/lang/Object;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 2383
    :catch_0
    move-exception v3

    .line 2384
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
