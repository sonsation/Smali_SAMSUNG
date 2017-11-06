.class Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "SeslShareActionProvider.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareMenuItemOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 360
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    move-result-object v1

    .line 362
    .local v1, "dataModel":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 363
    .local v2, "itemId":I
    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v3

    .line 364
    .local v3, "launchIntent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 365
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    .line 367
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->updateIntent(Landroid/content/Intent;)V

    .line 370
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 372
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method
