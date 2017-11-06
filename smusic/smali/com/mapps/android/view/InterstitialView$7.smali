.class Lcom/mapps/android/view/InterstitialView$7;
.super Ljava/lang/Object;
.source "InterstitialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->imageTypeSetting(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$7;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 270
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$7;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/InterstitialView;->access$8(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, "fileinputStream":Ljava/io/FileInputStream;
    if-eqz v1, :cond_1

    .line 272
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$7;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mapps/android/view/InterstitialView;->access$9(Lcom/mapps/android/view/InterstitialView;Landroid/graphics/Bitmap;)V

    .line 273
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$7;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/InterstitialView;->access$1(Lcom/mapps/android/view/InterstitialView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$7;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget-object v2, v2, Lcom/mapps/android/view/InterstitialView;->showViewHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1    # "fileinputStream":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
