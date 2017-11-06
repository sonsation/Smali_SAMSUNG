.class public abstract Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$SimpleCallback;
.super Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;
.source "SeslItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "dragDirs"    # I
    .param p2, "swipeDirs"    # I

    .prologue
    .line 2323
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;-><init>()V

    .line 2324
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2325
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2326
    return-void
.end method


# virtual methods
.method public getDragDirs(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 2371
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return v0
.end method

.method public getMovementFlags(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 2376
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$SimpleCallback;->getDragDirs(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v0

    .line 2377
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$SimpleCallback;->getSwipeDirs(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v1

    .line 2376
    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public getSwipeDirs(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 2358
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return v0
.end method

.method public setDefaultDragDirs(I)V
    .locals 0
    .param p1, "defaultDragDirs"    # I

    .prologue
    .line 2345
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2346
    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 0
    .param p1, "defaultSwipeDirs"    # I

    .prologue
    .line 2335
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2336
    return-void
.end method
