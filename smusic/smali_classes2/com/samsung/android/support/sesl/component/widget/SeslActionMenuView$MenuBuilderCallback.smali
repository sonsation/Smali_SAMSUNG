.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "SeslActionMenuView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;)V
    .locals 0

    .prologue
    .line 846
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$MenuBuilderCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 851
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$MenuBuilderCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$MenuBuilderCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;

    .line 852
    invoke-interface {v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 851
    :goto_0
    return v0

    .line 852
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$MenuBuilderCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenuBuilderCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$MenuBuilderCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenuBuilderCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;->onMenuModeChange(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 860
    :cond_0
    return-void
.end method
