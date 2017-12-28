.class Lcom/android/launcher3/widget/view/WidgetSearchbar$6;
.super Ljava/lang/Object;
.source "WidgetSearchbar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetSearchbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$6;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v2, 0x7f0901c4

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$6;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-static {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->access$300(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 424
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f110128

    if-ne v0, v1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$6;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-static {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->access$300(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;->startContactUs()V

    .line 426
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$6;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$6;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .line 427
    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 435
    :goto_1
    return v0

    .line 428
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f110127

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$6;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-static {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->access$300(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;->changeStateToUninstall()V

    .line 430
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$6;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$6;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .line 431
    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
