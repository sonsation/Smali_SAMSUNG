.class Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$1;
.super Ljava/lang/Object;
.source "SeslPopupMenu.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 116
    return-void
.end method
