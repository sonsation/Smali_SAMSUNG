.class Lcom/android/launcher3/util/logging/SALogging$20;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertMultiSelectLog(ILjava/util/ArrayList;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$btnText:Ljava/lang/String;

.field final synthetic val$id:I

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;

.field final synthetic val$mCheckedAppsViewList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$20;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$launcher:Lcom/android/launcher3/Launcher;

    iput p3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$id:I

    iput-object p4, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$btnText:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    .line 1113
    const/4 v1, 0x0

    .line 1114
    .local v1, "screenID":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    .line 1115
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0901c1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1126
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget v6, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$id:I

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$launcher:Lcom/android/launcher3/Launcher;

    iget-object v8, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$btnText:Ljava/lang/String;

    invoke-static {v3, v6, v7, v8}, Lcom/android/launcher3/util/logging/SALogging;->access$1400(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, "eventID":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v4, v3

    .line 1128
    .local v4, "value":J
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1129
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v3, v1, v0, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1131
    :cond_1
    return-void

    .line 1116
    .end local v0    # "eventID":Ljava/lang/String;
    .end local v4    # "value":J
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 1117
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0901b4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1118
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_0

    .line 1119
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v2

    .line 1120
    .local v2, "secondStageMode":I
    if-ne v2, v7, :cond_4

    .line 1121
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0901ad

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1123
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$20;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0901b9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
