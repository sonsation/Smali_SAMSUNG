.class Lcom/android/launcher3/common/base/view/PagedView$5;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/PagedView;->endReordering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 2345
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView$5;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$5;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->onEndReordering()V

    .line 2349
    return-void
.end method
