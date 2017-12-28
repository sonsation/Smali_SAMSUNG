.class Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;
.super Ljava/lang/Object;
.source "WidgetItemView.java"

# interfaces
.implements Lcom/android/launcher3/util/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewJobListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/threadpool/FutureListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHeight:I

.field private final mLayout:Lcom/android/launcher3/widget/view/WidgetPageLayout;

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetItemView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/view/WidgetItemView;Lcom/android/launcher3/widget/view/WidgetPageLayout;II)V
    .locals 0
    .param p2, "layout"    # Lcom/android/launcher3/widget/view/WidgetPageLayout;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->this$0:Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p2, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->mLayout:Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 316
    iput p3, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->mWidth:I

    .line 317
    iput p4, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->mHeight:I

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;)Lcom/android/launcher3/widget/view/WidgetPageLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->mLayout:Lcom/android/launcher3/widget/view/WidgetPageLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    .prologue
    .line 309
    iget v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->mWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    .prologue
    .line 309
    iget v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->mHeight:I

    return v0
.end method


# virtual methods
.method public onFutureDone(Lcom/android/launcher3/util/threadpool/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/threadpool/Future",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "future":Lcom/android/launcher3/util/threadpool/Future;, "Lcom/android/launcher3/util/threadpool/Future<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->this$0:Lcom/android/launcher3/widget/view/WidgetItemView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    .line 323
    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->this$0:Lcom/android/launcher3/widget/view/WidgetItemView;

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;-><init>(Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;Lcom/android/launcher3/util/threadpool/Future;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
