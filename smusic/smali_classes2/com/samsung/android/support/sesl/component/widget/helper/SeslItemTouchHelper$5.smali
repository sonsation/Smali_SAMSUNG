.class Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$5;
.super Ljava/lang/Object;
.source "SeslItemTouchHelper.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1384
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1395
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 1387
    .restart local p2    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v0, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChildPosition:I

    .line 1388
    .local v0, "childPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1389
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1390
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChildPosition:I

    .line 1392
    :cond_2
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_3

    move p2, v0

    .line 1393
    goto :goto_0

    .line 1395
    :cond_3
    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
