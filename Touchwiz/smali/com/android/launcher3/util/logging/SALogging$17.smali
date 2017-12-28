.class Lcom/android/launcher3/util/logging/SALogging$17;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->updateDefaultPageLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$17;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1045
    sget-object v3, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1046
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$17;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v4, 0x7f0901d1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    .line 1047
    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v5

    .line 1046
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1048
    sget-object v3, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeApps(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v0

    .line 1049
    .local v0, "appShortcuts":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$17;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v4, 0x7f0901d0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    sget-object v3, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeWidgetList(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v2

    .line 1052
    .local v2, "widgets":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$17;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v4, 0x7f0901d2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    return-void
.end method
