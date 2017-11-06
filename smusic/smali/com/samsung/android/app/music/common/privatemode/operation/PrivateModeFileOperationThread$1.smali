.class Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$1;
.super Ljava/lang/Object;
.source "PrivateModeFileOperationThread.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/privatemode/operation/FileOperation$IprogressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->moveFile(JLjava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateProgress(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    .line 392
    invoke-static {v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->access$100(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->access$200(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;ILjava/lang/String;I)V

    .line 393
    return-void
.end method
