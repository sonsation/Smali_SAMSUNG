.class Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
.super Lcom/android/server/backup/BackupManagerService$FullParams;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullRestoreParams"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "input"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$FullParams;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 623
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 622
    return-void
.end method
