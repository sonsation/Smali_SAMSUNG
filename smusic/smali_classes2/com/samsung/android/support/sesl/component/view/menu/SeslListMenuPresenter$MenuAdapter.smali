.class Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeslListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;)V
    .locals 1

    .prologue
    .line 232
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 234
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 271
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getExpandedItem()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v1

    .line 272
    .local v1, "expandedItem":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    if-eqz v1, :cond_1

    .line 273
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 274
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 275
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 276
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 277
    .local v3, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 278
    iput v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 284
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :goto_1
    return-void

    .line 275
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 237
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 238
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mItemIndexOffset:I

    sub-int v0, v2, v3

    .line 239
    .local v0, "count":I
    iget v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_0

    .line 242
    .end local v0    # "count":I
    :goto_0
    return v0

    .restart local v0    # "count":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 246
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 247
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget v1, v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mItemIndexOffset:I

    add-int/2addr p1, v1

    .line 248
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 249
    add-int/lit8 p1, p1, 0x1

    .line 251
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->getItem(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 257
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 261
    if-nez p2, :cond_0

    .line 262
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mItemLayoutRes:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 265
    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    .line 266
    .local v0, "itemView":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->getItem(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;->initialize(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;I)V

    .line 267
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 289
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 290
    return-void
.end method
