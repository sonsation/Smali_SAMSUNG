.class Lcom/android/launcher3/folder/folderlock/FolderLock$1;
.super Ljava/lang/Object;
.source "FolderLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/folderlock/FolderLock;->onLauncherBindingItemsCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/folderlock/FolderLock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/folderlock/FolderLock;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$1;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$1;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-static {v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$400(Lcom/android/launcher3/folder/folderlock/FolderLock;)V

    .line 319
    return-void
.end method
