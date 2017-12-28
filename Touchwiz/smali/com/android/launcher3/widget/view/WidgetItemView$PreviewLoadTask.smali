.class Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;
.super Ljava/lang/Object;
.source "WidgetItemView.java"

# interfaces
.implements Lcom/android/launcher3/util/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHeight:I

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetItemView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/view/WidgetItemView;Ljava/util/List;II)V
    .locals 0
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;->mItems:Ljava/util/List;

    .line 297
    iput p3, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;->mWidth:I

    .line 298
    iput p4, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;->mHeight:I

    .line 299
    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "jc"    # Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;

    .prologue
    .line 303
    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/view/WidgetItemView;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;->mItems:Ljava/util/List;

    iget v2, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;->mWidth:I

    iget v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;->mHeight:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->loadPreview(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;Ljava/util/List;II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
