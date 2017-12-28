.class Lcom/android/launcher3/common/view/IconViewStub$InflateBackgroundTask;
.super Ljava/lang/Object;
.source "IconViewStub.java"

# interfaces
.implements Lcom/android/launcher3/util/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/view/IconViewStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InflateBackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/threadpool/ThreadPool$Job",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

.field final synthetic this$0:Lcom/android/launcher3/common/view/IconViewStub;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/view/IconViewStub;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0
    .param p2, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateBackgroundTask;->this$0:Lcom/android/launcher3/common/view/IconViewStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p2, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateBackgroundTask;->mIconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 359
    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Landroid/view/View;
    .locals 3
    .param p1, "jc"    # Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;

    .prologue
    .line 363
    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 369
    :goto_0
    return-object v0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateBackgroundTask;->this$0:Lcom/android/launcher3/common/view/IconViewStub;

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateBackgroundTask;->mIconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {v1, v2}, Lcom/android/launcher3/common/view/IconViewStub;->access$300(Lcom/android/launcher3/common/view/IconViewStub;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 368
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateBackgroundTask;->this$0:Lcom/android/launcher3/common/view/IconViewStub;

    invoke-static {v1}, Lcom/android/launcher3/common/view/IconViewStub;->access$400(Lcom/android/launcher3/common/view/IconViewStub;)Landroid/view/View;

    move-result-object v0

    .line 369
    .local v0, "view":Landroid/view/View;
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconViewStub$InflateBackgroundTask;->run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
