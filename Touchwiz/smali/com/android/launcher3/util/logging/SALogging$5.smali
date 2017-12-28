.class Lcom/android/launcher3/util/logging/SALogging$5;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertCloseWidgetFolderLog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$index:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$5;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$5;->val$index:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 330
    sget-object v2, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    sget-object v2, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "screenID":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "eventID":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 335
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$5;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$5;->val$index:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
