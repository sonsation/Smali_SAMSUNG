.class Lcom/android/launcher3/folder/view/FolderView$10;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 526
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$800(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget v8, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 527
    .local v8, "oldColor":I
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1, p1}, Lcom/android/launcher3/folder/view/FolderView;->access$900(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/View;)Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v0

    .line 528
    .local v0, "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1, v0, v12}, Lcom/android/launcher3/folder/view/FolderView;->access$1000(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V

    .line 529
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->toggleColorPicker()V

    .line 532
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    if-ne v0, v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f090040

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 537
    .local v7, "colorDesc":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v10, 0x7f0900c6

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v7, v11, v13

    invoke-virtual {v6, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$800(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    if-eq v8, v1, :cond_1

    const-wide/16 v4, 0x1

    .line 540
    .local v4, "colorChanged":J
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 541
    .local v9, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$800(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0901ab

    .line 542
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "screenID":Ljava/lang/String;
    :goto_2
    const v1, 0x7f090137

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "eventID":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v6}, Lcom/android/launcher3/folder/view/FolderView;->access$800(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/folder/FolderInfo;->color:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 545
    return-void

    .line 535
    .end local v2    # "screenID":Ljava/lang/String;
    .end local v3    # "eventID":Ljava/lang/String;
    .end local v4    # "colorChanged":J
    .end local v7    # "colorDesc":Ljava/lang/String;
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f090041

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v1, v6, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "colorDesc":Ljava/lang/String;
    goto :goto_0

    .line 539
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 542
    .restart local v4    # "colorChanged":J
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_2
    const v1, 0x7f0901b7

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
