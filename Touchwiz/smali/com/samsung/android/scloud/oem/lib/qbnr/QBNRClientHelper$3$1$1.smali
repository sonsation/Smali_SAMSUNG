.class Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;
.super Ljava/lang/Object;
.source "QBNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Z)V
    .locals 6
    .param p1, "isSuccess"    # Z

    .prologue
    .line 185
    const-string v3, "QBNRClientHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESTORE, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    iget-object v5, v5, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->val$name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", complete - isSuccess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    iget-object v3, v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;

    iget-object v3, v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$602(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;Z)Z

    .line 187
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    iget-object v3, v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;

    iget-object v3, v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v3, p1}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$702(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;Z)Z

    .line 188
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    iget-object v3, v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->val$observingUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 189
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v4, "is_success"

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    iget-object v3, v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;

    iget-object v3, v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v3}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$700(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 190
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 191
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    iget-object v3, v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 192
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    iget-object v3, v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->val$file:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_0

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    iget-object v3, v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->val$file:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_1
    return-void

    .line 189
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v3, "0"

    goto :goto_0

    .line 195
    .restart local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public onProgress(JJ)V
    .locals 3
    .param p1, "proc"    # J
    .param p3, "total"    # J

    .prologue
    .line 177
    const-string v0, "QBNRClientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress -  proc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$402(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;J)J

    .line 179
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1$1;->this$2:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3$1;->this$1:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-static {v0, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$502(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;J)J

    .line 181
    return-void
.end method
