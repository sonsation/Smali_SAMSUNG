.class Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$8;
.super Ljava/lang/Object;
.source "SimLockStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$8;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 270
    const-string/jumbo v1, "SimLockStatus"

    const-string/jumbo v2, "Download policy file"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$8;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->-get0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/content/Context;

    move-result-object v1

    .line 271
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    move-result-object v0

    .line 273
    .local v0, "samsungRilConnector":Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$8;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->-get1(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$8;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->-get1(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->setBlob([B)V

    .line 269
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 277
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$8;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->-wrap3(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;I)V

    goto :goto_0
.end method
