.class Lcom/android/launcher3/folder/view/FolderView$24;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->setSuppressFolderNameFocus(J)V
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
    .line 3025
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$24;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$24;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$200(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setFocusableInTouchMode(Z)V

    .line 3029
    return-void
.end method
