.class Lcom/android/launcher3/folder/view/FolderView$8;
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
    .line 448
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$8;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 451
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$8;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$8;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 454
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$8;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->toggleColorPicker()V

    .line 456
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$8;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 457
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$8;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v3}, Lcom/android/launcher3/folder/view/FolderView;->access$800(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0901ab

    .line 458
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "screenID":Ljava/lang/String;
    :goto_0
    const v3, 0x7f090135

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "eventID":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void

    .line 458
    .end local v0    # "eventID":Ljava/lang/String;
    .end local v2    # "screenID":Ljava/lang/String;
    :cond_1
    const v3, 0x7f0901b7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
