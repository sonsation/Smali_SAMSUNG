.class Lcom/android/launcher3/util/logging/SALogging$15;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertFolderMoveAppLogs(Lcom/android/launcher3/Launcher;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$isMultiSelect:Z

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$15;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$15;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-boolean p3, p0, Lcom/android/launcher3/util/logging/SALogging$15;->val$isMultiSelect:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 750
    sget-object v4, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 751
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 752
    .local v2, "screenId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 753
    .local v0, "eventId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$15;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v3

    .line 754
    .local v3, "secondTopStage":I
    iget-boolean v4, p0, Lcom/android/launcher3/util/logging/SALogging$15;->val$isMultiSelect:Z

    if-eqz v4, :cond_3

    .line 755
    if-ne v3, v5, :cond_2

    .line 756
    const v4, 0x7f0901b9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 760
    :cond_0
    :goto_0
    const v4, 0x7f090142

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 769
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 770
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$15;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v4, v2, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_1
    return-void

    .line 757
    :cond_2
    if-ne v3, v6, :cond_0

    .line 758
    const v4, 0x7f0901ad

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 762
    :cond_3
    if-ne v3, v5, :cond_5

    .line 763
    const v4, 0x7f0901ba

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 767
    :cond_4
    :goto_2
    const v4, 0x7f090145

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 764
    :cond_5
    if-ne v3, v6, :cond_4

    .line 765
    const v4, 0x7f0901ae

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
