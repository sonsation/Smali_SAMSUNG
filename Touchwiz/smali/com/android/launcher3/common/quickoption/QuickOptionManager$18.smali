.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$18;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionSetToZeroPage(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field final synthetic val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$18;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$18;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 582
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$18;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$18;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 585
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.intent.action.SET_ZERO_PAGE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const-string v3, "zeroapp_package_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v3, "zeroapp_class_name"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$18;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v3}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 590
    return-void
.end method
