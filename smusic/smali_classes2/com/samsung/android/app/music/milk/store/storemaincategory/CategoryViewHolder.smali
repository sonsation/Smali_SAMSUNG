.class public abstract Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CategoryViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public abstract onBindView(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
.end method

.method public abstract onCreateView(Landroid/view/ViewGroup;)V
.end method

.method public abstract onUnBindView()V
.end method
