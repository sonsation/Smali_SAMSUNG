.class Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "SeslToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItem;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;)V
    .locals 7
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    .prologue
    const/4 v2, 0x0

    .line 173
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItem;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    iget-object v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$1;->mNavItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mMenuPrepared:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$1;->mNavItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItem;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 181
    :cond_0
    return-void
.end method
