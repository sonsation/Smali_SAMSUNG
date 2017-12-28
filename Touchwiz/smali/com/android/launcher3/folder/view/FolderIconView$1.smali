.class final Lcom/android/launcher3/folder/view/FolderIconView$1;
.super Ljava/lang/Object;
.source "FolderIconView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$parentFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderIconView$1;->val$parentFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 249
    if-ne p3, p7, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$1;->val$parentFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$1;->val$parentFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->access$002(Lcom/android/launcher3/folder/view/FolderIconView;Z)Z

    .line 252
    :cond_1
    return-void
.end method
