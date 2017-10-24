.class Lcom/android/server/enterprise/log/LogManagerService$2;
.super Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;
.source "LogManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/log/LogManagerService;->copyLogs(Landroid/os/ParcelFileDescriptor;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
        "<",
        "Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/log/LogManagerService;

.field final synthetic val$file:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/LogManagerService;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/log/LogManagerService;
    .param p2, "val$file"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/server/enterprise/log/LogManagerService$2;->this$0:Lcom/android/server/enterprise/log/LogManagerService;

    iput-object p2, p0, Lcom/android/server/enterprise/log/LogManagerService$2;->val$file:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 0
    .param p1, "io"    # Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 402
    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0
    .param p1, "io"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    check-cast p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .end local p1    # "io":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService$2;->close(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void
.end method

.method public flush(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 0
    .param p1, "io"    # Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->flush()V

    .line 389
    return-void
.end method

.method public bridge synthetic flush(Ljava/lang/Object;)V
    .locals 0
    .param p1, "io"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    check-cast p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .end local p1    # "io":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService$2;->flush(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void
.end method

.method public open()Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 375
    iget-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService$2;->val$file:Landroid/os/ParcelFileDescriptor;

    .line 374
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public bridge synthetic open()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/server/enterprise/log/LogManagerService$2;->open()Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public process(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 2
    .param p1, "io"    # Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/server/enterprise/log/LogManagerService$2;->this$0:Lcom/android/server/enterprise/log/LogManagerService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/LogManagerService;->-wrap0(Lcom/android/server/enterprise/log/LogManagerService;I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/log/FileLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/log/FileLogger;->copyLogs(Ljava/io/FileOutputStream;)V

    .line 381
    return-void
.end method

.method public bridge synthetic process(Ljava/lang/Object;)V
    .locals 0
    .param p1, "io"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    check-cast p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .end local p1    # "io":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService$2;->process(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void
.end method

.method public sync(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 1
    .param p1, "io"    # Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 395
    return-void
.end method

.method public bridge synthetic sync(Ljava/lang/Object;)V
    .locals 0
    .param p1, "io"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    check-cast p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .end local p1    # "io":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService$2;->sync(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void
.end method
