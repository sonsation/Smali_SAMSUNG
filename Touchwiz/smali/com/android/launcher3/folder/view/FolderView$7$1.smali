.class Lcom/android/launcher3/folder/view/FolderView$7$1;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView$7;->onLayoutUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/folder/view/FolderView$7;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/folder/view/FolderView$7;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$7$1;->this$1:Lcom/android/launcher3/folder/view/FolderView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$7$1;->this$1:Lcom/android/launcher3/folder/view/FolderView$7;

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView$7;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->access$700(Lcom/android/launcher3/folder/view/FolderView;Z)V

    .line 427
    return-void
.end method
