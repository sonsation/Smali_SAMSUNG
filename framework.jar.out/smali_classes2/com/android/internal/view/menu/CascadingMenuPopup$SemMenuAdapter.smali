.class Lcom/android/internal/view/menu/CascadingMenuPopup$SemMenuAdapter;
.super Lcom/android/internal/view/menu/MenuAdapter;
.source "CascadingMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemMenuAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/CascadingMenuPopup;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
    .param p4, "overflowOnly"    # Z

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$SemMenuAdapter;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 818
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    .line 819
    iput-object p3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$SemMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 817
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 824
    if-nez p2, :cond_0

    .line 825
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$SemMenuAdapter;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get1(Lcom/android/internal/view/menu/CascadingMenuPopup;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 826
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$SemMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109014d

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    move-object v0, p2

    .line 832
    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 833
    .local v0, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuAdapter;->getForceShowIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 834
    check-cast v1, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 836
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 837
    return-object p2

    .line 828
    .end local v0    # "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$SemMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x10900b4

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method
