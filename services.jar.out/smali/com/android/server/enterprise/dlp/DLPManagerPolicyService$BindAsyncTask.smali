.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
.super Landroid/os/AsyncTask;
.source "DLPManagerPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVATE:I = 0x2

.field public static final DELETE_APP_DATA:I = 0x3

.field public static final EXPIRY_AFTER:I = 0x1

.field public static final FEEDER_INSTALLATION:I


# instance fields
.field private opcode:I

.field final synthetic this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p2, "opcode"    # I

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .line 293
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 294
    iput p2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->opcode:I

    .line 292
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # [Ljava/lang/Object;

    .prologue
    .line 312
    check-cast p1, [Landroid/content/Intent;

    .end local p1    # "arg":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 14
    .param p1, "arg"    # [Landroid/content/Intent;

    .prologue
    .line 314
    const/4 v11, 0x0

    aget-object v4, p1, v11

    .line 316
    .local v4, "in":Landroid/content/Intent;
    if-nez v4, :cond_0

    .line 318
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v11

    .line 319
    const-string/jumbo v12, "in bindAsyncTask: doInBackground : Intent is null"

    .line 318
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v11, 0x0

    return-object v11

    .line 322
    :cond_0
    const-string/jumbo v11, "android.intent.extra.user_handle"

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 323
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v11, v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-wrap3(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v11

    if-nez v11, :cond_1

    .line 324
    iget-object v11, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v11, v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-wrap4(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .line 326
    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v11, v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-wrap3(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v8

    .line 327
    .local v8, "serviceConn":Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    if-nez v8, :cond_2

    .line 329
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v11

    .line 330
    const-string/jumbo v12, "in bindAsyncTask: doInBackground : Could not bind to Samsung DLP Service"

    .line 329
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v11, 0x0

    return-object v11

    .line 333
    :cond_2
    iget v11, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->opcode:I

    packed-switch v11, :pswitch_data_0

    .line 382
    .end local v8    # "serviceConn":Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    .end local v10    # "userId":I
    :cond_3
    :goto_0
    const/4 v11, 0x0

    return-object v11

    .line 337
    .restart local v8    # "serviceConn":Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    .restart local v10    # "userId":I
    :pswitch_0
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 338
    const-string/jumbo v11, "android.intent.extra.UID"

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 339
    .local v9, "uID":I
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 341
    .local v7, "pckgName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "in bindAsyncTask: doInBackground:  Package Name = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 342
    const-string/jumbo v13, ": userid = "

    .line 341
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 342
    const-string/jumbo v13, " uid: "

    .line 341
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-interface {v8, v7}, Lcom/samsung/android/knox/dlp/IFrameworkConnector;->getDLPConfig(Ljava/lang/String;)Lcom/samsung/android/knox/dlp/DLPConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 375
    .end local v7    # "pckgName":Ljava/lang/String;
    .end local v8    # "serviceConn":Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    .end local v9    # "uID":I
    .end local v10    # "userId":I
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "in bindAsyncTask: doInBackground:  got  RemoteException while retrieving Package Name"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v8    # "serviceConn":Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    .restart local v10    # "userId":I
    :pswitch_1
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 352
    .local v0, "config":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "DLP : notify DLPService change expiryAfter"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string/jumbo v11, "ExpiryAfter"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 354
    .local v3, "expiryAfter":I
    const/4 v11, 0x1

    invoke-interface {v8, v11, v3}, Lcom/samsung/android/knox/dlp/IFrameworkConnector;->configureDLPFileHandling(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 379
    .end local v0    # "config":Landroid/os/Bundle;
    .end local v3    # "expiryAfter":I
    .end local v8    # "serviceConn":Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    .end local v10    # "userId":I
    :catch_1
    move-exception v2

    .line 380
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "in bindAsyncTask: doInBackground exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 360
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v8    # "serviceConn":Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    .restart local v10    # "userId":I
    :pswitch_2
    :try_start_2
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 361
    .restart local v0    # "config":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "DLP : notify DLPService"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string/jumbo v11, "ExpiryAfter"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 363
    .restart local v3    # "expiryAfter":I
    const-string/jumbo v11, "Activate"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 364
    .local v5, "isActivated":Z
    invoke-interface {v8, v5, v3}, Lcom/samsung/android/knox/dlp/IFrameworkConnector;->configureDLPFileHandling(ZI)V

    goto/16 :goto_0

    .line 370
    .end local v0    # "config":Landroid/os/Bundle;
    .end local v3    # "expiryAfter":I
    .end local v5    # "isActivated":Z
    :pswitch_3
    const-string/jumbo v11, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v8, v6}, Lcom/samsung/android/knox/dlp/IFrameworkConnector;->deletePackageData(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 298
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 301
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "in bindAsyncTask: onPostExecute "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 308
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "in bindAsyncTask: onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method
