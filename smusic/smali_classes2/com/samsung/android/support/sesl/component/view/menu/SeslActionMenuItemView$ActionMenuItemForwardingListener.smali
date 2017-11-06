.class Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$ActionMenuItemForwardingListener;
.super Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;
.source "SeslActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    .line 493
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;-><init>(Landroid/view/View;)V

    .line 494
    return-void
.end method


# virtual methods
.method public getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mPopupCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$PopupCallback;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mPopupCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$PopupCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$PopupCallback;->getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemInvoker:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemInvoker:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-interface {v2, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;->invokeItem(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;

    move-result-object v0

    .line 509
    .local v0, "popup":Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 511
    .end local v0    # "popup":Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
    :cond_0
    return v1
.end method
