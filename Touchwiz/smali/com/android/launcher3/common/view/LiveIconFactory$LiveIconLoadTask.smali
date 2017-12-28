.class Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;
.super Ljava/lang/Object;
.source "LiveIconManager.java"

# interfaces
.implements Lcom/android/launcher3/util/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/view/LiveIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiveIconLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/threadpool/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/launcher3/common/view/LiveIconFactory;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/LiveIconFactory;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/view/LiveIconFactory;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;->this$0:Lcom/android/launcher3/common/view/LiveIconFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;->mContext:Landroid/content/Context;

    .line 365
    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "jc"    # Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 371
    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;->this$0:Lcom/android/launcher3/common/view/LiveIconFactory;

    iget-object v1, p0, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/LiveIconFactory;->create(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;->run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
