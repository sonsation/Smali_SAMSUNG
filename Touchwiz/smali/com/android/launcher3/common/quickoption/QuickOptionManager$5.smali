.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$5;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionPutToSleep(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$5;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object p3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$5;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$5;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$5;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->createAndShow(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "HSQO"

    :goto_0
    const-string v3, "Sleep"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 267
    return-void

    .line 265
    :cond_0
    const-string v2, "APQO"

    goto :goto_0
.end method
