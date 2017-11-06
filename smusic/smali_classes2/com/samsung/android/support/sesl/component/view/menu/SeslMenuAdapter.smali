.class public Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeslMenuAdapter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I


# instance fields
.field mAdapterMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field private mExpandedIndex:I

.field private mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mOverflowOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/samsung/android/support/sesl/R$layout;->sesl_popup_menu_item_layout:I

    sput v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/LayoutInflater;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "overflowOnly"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mExpandedIndex:I

    .line 46
    iput-boolean p3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mOverflowOnly:Z

    .line 47
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mAdapterMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->findExpandedIndex()V

    .line 50
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 106
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mAdapterMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getExpandedItem()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v1

    .line 107
    .local v1, "expandedItem":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    if-eqz v1, :cond_1

    .line 108
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mAdapterMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 109
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 110
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 111
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 112
    .local v3, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 113
    iput v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mExpandedIndex:I

    .line 119
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :goto_1
    return-void

    .line 110
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getAdapterMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mAdapterMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mOverflowOnly:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mAdapterMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 63
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 67
    :goto_1
    return v1

    .line 63
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mAdapterMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 67
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getForceShowIcon()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mForceShowIcon:Z

    return v0
.end method

.method public getItem(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mOverflowOnly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mAdapterMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 77
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 81
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    return-object v1

    .line 77
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mAdapterMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->getItem(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 88
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

    .line 93
    if-nez p2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->ITEM_LAYOUT:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 97
    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    .line 98
    .local v0, "itemView":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 99
    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->setForceShowIcon(Z)V

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->getItem(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;->initialize(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;I)V

    .line 102
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->findExpandedIndex()V

    .line 124
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 125
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->mForceShowIcon:Z

    .line 58
    return-void
.end method
