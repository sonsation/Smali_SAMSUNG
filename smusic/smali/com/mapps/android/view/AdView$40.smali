.class Lcom/mapps/android/view/AdView$40;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->getReloadImage(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdView$40;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$40;->val$urlStr:Ljava/lang/String;

    .line 2585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2588
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/mapps/android/view/AdView$40;->val$urlStr:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2589
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    .line 2590
    .local v1, "content":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, Ljava/io/InputStream;

    move-object v3, v0

    .line 2591
    .local v3, "is":Ljava/io/InputStream;
    iget-object v6, p0, Lcom/mapps/android/view/AdView$40;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v6, v6, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 2592
    iget-object v6, p0, Lcom/mapps/android/view/AdView$40;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v6, v6, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2593
    iget-object v6, p0, Lcom/mapps/android/view/AdView$40;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    .line 2596
    :cond_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2597
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v6, 0x8

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2598
    iget-object v6, p0, Lcom/mapps/android/view/AdView$40;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v7, 0x0

    invoke-static {v3, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    .line 2599
    iget-object v6, p0, Lcom/mapps/android/view/AdView$40;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v6, v6, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 2600
    iget-object v6, p0, Lcom/mapps/android/view/AdView$40;->this$0:Lcom/mapps/android/view/AdView;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/mapps/android/view/AdView$40;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v8, v8, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdView;->access$90(Lcom/mapps/android/view/AdView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2606
    .end local v1    # "content":Ljava/lang/Object;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 2602
    :catch_0
    move-exception v2

    .line 2603
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/mapps/android/view/AdView$40;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v6}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 2604
    iget-object v6, p0, Lcom/mapps/android/view/AdView$40;->this$0:Lcom/mapps/android/view/AdView;

    const/16 v7, -0x384

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdView;->access$6(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0
.end method
