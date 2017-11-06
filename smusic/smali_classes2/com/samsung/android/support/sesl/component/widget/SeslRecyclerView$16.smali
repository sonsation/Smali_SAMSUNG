.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$16;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->pageScroll(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 13875
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$16;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 13878
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$16;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 13879
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 13880
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 13882
    :cond_0
    return-void
.end method
