.class public Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;
.super Landroid/os/AsyncTask;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/model/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmapToRecycle:Landroid/graphics/Bitmap;

.field private final mCaller:Lcom/android/launcher3/widget/view/PreviewLoadListener;

.field private final mInfo:Ljava/lang/Object;

.field private final mKey:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private mVersions:[J

.field final synthetic this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;Ljava/lang/Object;IILcom/android/launcher3/widget/view/PreviewLoadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/model/WidgetPreviewLoader;
    .param p2, "key"    # Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;
    .param p3, "info"    # Ljava/lang/Object;
    .param p4, "previewWidth"    # I
    .param p5, "previewHeight"    # I
    .param p6, "caller"    # Lcom/android/launcher3/widget/view/PreviewLoadListener;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 602
    iput-object p2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;

    .line 603
    iput-object p3, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Ljava/lang/Object;

    .line 604
    iput p5, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    .line 605
    iput p4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    .line 606
    iput-object p6, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/android/launcher3/widget/view/PreviewLoadListener;

    .line 611
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v0, 0x0

    .line 615
    const/4 v3, 0x0

    .line 618
    .local v3, "unusedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v7, v0

    .line 659
    :cond_0
    :goto_0
    return-object v7

    .line 621
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-static {v2}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$200(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 623
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-static {v4}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$200(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 624
    .local v6, "candidate":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 625
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    if-ne v5, v8, :cond_2

    .line 626
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v8, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    if-ne v5, v8, :cond_2

    .line 627
    move-object v3, v6

    .line 628
    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-static {v4}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$200(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 632
    .end local v6    # "candidate":Landroid/graphics/Bitmap;
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    if-nez v3, :cond_4

    .line 636
    iget v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 639
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v7, v3

    .line 640
    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 642
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;

    invoke-static {v2, v4, v3, p0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$500(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 644
    .local v7, "preview":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v7, :cond_0

    .line 648
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v4, v4, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$600(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, "launcher":Lcom/android/launcher3/Launcher;
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/android/launcher3/widget/view/PreviewLoadListener;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_6

    .line 652
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/android/launcher3/widget/view/PreviewLoadListener;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .end local v1    # "launcher":Lcom/android/launcher3/Launcher;
    check-cast v1, Lcom/android/launcher3/Launcher;

    .line 657
    .restart local v1    # "launcher":Lcom/android/launcher3/Launcher;
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Ljava/lang/Object;

    iget v4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v5, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$700(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Lcom/android/launcher3/Launcher;Ljava/lang/Object;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_0

    :cond_6
    move-object v7, v0

    .line 654
    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 591
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 697
    if-eqz p1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-static {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$400(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$2;-><init>(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 707
    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 591
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/android/launcher3/widget/view/PreviewLoadListener;

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/widget/view/PreviewLoadListener;->applyPreview(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 667
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-static {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$400(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;-><init>(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 690
    :goto_0
    return-void

    .line 688
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 591
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
