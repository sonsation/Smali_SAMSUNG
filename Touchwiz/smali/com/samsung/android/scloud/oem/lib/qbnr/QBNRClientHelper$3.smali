.class Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;
.super Ljava/lang/Object;
.source "QBNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->setHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 166
    const-string v0, "observing_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "uri":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 168
    .local v5, "observingUri":Landroid/net/Uri;
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 169
    .local v3, "file":Landroid/os/ParcelFileDescriptor;
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$300(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V

    .line 170
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESTORE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method
