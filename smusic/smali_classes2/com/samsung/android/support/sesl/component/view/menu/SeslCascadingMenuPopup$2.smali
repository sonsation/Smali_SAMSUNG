.class Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;
.super Ljava/lang/Object;
.source "SeslCascadingMenuPopup.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemHoverEnter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)V
    .locals 12
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    const/4 v2, -0x1

    .line 131
    .local v2, "menuIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 132
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-ne p1, v8, :cond_1

    .line 133
    move v2, v1

    .line 138
    :cond_0
    const/4 v8, -0x1

    if-ne v2, v8, :cond_2

    .line 171
    :goto_1
    return-void

    .line 131
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 144
    .local v3, "nextIndex":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 145
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 150
    .local v4, "nextInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    :goto_2
    new-instance v5, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;

    invoke-direct {v5, p0, v4, p2, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2$1;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 169
    .local v5, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xc8

    add-long v6, v8, v10

    .line 170
    .local v6, "uptimeMillis":J
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5, p1, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_1

    .line 147
    .end local v4    # "nextInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    .end local v5    # "runnable":Ljava/lang/Runnable;
    .end local v6    # "uptimeMillis":J
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "nextInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    goto :goto_2
.end method

.method public onItemHoverExit(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    return-void
.end method
