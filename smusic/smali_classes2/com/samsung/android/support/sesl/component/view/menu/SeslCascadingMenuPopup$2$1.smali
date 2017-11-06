.class Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;
.super Ljava/lang/Object;
.source "SeslCascadingMenuPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;->onItemHoverEnter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field final synthetic val$nextInfo:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->this$1:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->val$nextInfo:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->val$item:Landroid/view/MenuItem;

    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->val$menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->val$nextInfo:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->this$1:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 159
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->val$nextInfo:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->this$1:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->val$menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;->val$item:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 167
    :cond_1
    return-void
.end method
