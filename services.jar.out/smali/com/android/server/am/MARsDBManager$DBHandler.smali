.class Lcom/android/server/am/MARsDBManager$DBHandler;
.super Landroid/os/Handler;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    .line 328
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 327
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 333
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 332
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 335
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v5}, Lcom/android/server/am/MARsDBManager;->-wrap7(Lcom/android/server/am/MARsDBManager;)V

    goto :goto_0

    .line 338
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/server/am/MARsDBManager;->-wrap6(Lcom/android/server/am/MARsDBManager;Z)V

    goto :goto_0

    .line 341
    :pswitch_3
    const/16 v17, 0x3

    .line 343
    .local v17, "columns":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v5, v5, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v5, :cond_1

    .line 344
    const/16 v17, 0xb

    .line 347
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v5}, Lcom/android/server/am/MARsDBManager;->-get1(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v7}, Lcom/android/server/am/MARsDBManager;->-get1(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;

    move-result-object v7

    move/from16 v0, v17

    invoke-static {v5, v0, v7}, Lcom/android/server/am/MARsDBManager;->-wrap2(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V

    goto :goto_0

    .line 352
    .end local v17    # "columns":I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    .line 353
    .local v18, "extras":Landroid/os/Bundle;
    if-eqz v18, :cond_0

    .line 354
    const-string/jumbo v5, "packageName"

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "time"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 356
    .local v20, "time":J
    const-string/jumbo v5, "strExtras"

    const-string/jumbo v7, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, "strExtras":Ljava/lang/String;
    const/16 v17, 0x0

    .line 358
    .restart local v17    # "columns":I
    const/4 v4, 0x0

    .line 360
    .local v4, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    if-eqz v6, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v5, v20, v22

    if-eqz v5, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v5, v5, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v5, :cond_2

    .line 362
    const/16 v17, 0x3

    .line 363
    new-instance v4, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .end local v4    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .local v4, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    move/from16 v0, v17

    invoke-static {v5, v6, v0, v4}, Lcom/android/server/am/MARsDBManager;->-wrap10(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V

    goto/16 :goto_0

    .line 365
    .local v4, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_2
    const-string/jumbo v5, "strAutoRun"

    const-string/jumbo v7, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 366
    .local v9, "strAutoRun":Ljava/lang/String;
    const/16 v17, 0xb

    .line 367
    new-instance v4, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .end local v4    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_1

    .line 375
    .end local v4    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v8    # "strExtras":Ljava/lang/String;
    .end local v9    # "strAutoRun":Ljava/lang/String;
    .end local v17    # "columns":I
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v20    # "time":J
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    .line 376
    .restart local v18    # "extras":Landroid/os/Bundle;
    if-eqz v18, :cond_0

    .line 377
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const-string/jumbo v7, "onCreate"

    const/4 v10, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v5, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    .line 378
    const-string/jumbo v5, "onUpgrade"

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 379
    .local v19, "onUpgrade":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v5, v5, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v5, :cond_3

    .line 380
    const-string/jumbo v5, "MARsDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Received MARS_DB_REQUEST_FILLINDB_MSG, --mDBCreate = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v10, v10, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " --onUpgrade = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 381
    const-string/jumbo v10, " --mDBUpdated = "

    .line 380
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 381
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v10}, Lcom/android/server/am/MARsDBManager;->-get0(Lcom/android/server/am/MARsDBManager;)Z

    move-result v10

    .line 380
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v5, v5, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    if-eqz v5, :cond_4

    .line 385
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v5, v7, v10, v0}, Lcom/android/server/am/MARsDBManager;->-wrap9(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;Z)V

    .line 386
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/server/am/MARsDBManager;->-set1(Lcom/android/server/am/MARsDBManager;Z)Z

    .line 387
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/server/am/MARsDBManager;->-wrap6(Lcom/android/server/am/MARsDBManager;Z)V

    .line 388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v5}, Lcom/android/server/am/MARsDBManager;->-wrap3(Lcom/android/server/am/MARsDBManager;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    goto/16 :goto_0

    .line 391
    :cond_4
    if-nez v19, :cond_5

    .line 393
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v5}, Lcom/android/server/am/MARsDBManager;->-get0(Lcom/android/server/am/MARsDBManager;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 394
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v5, v7, v10, v0}, Lcom/android/server/am/MARsDBManager;->-wrap9(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;Z)V

    .line 395
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/server/am/MARsDBManager;->-set1(Lcom/android/server/am/MARsDBManager;Z)Z

    goto/16 :goto_0

    .line 398
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    goto/16 :goto_0

    .line 404
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v19    # "onUpgrade":Z
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    .line 405
    .restart local v18    # "extras":Landroid/os/Bundle;
    if-eqz v18, :cond_0

    .line 406
    const-string/jumbo v5, "packageName"

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 407
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v5, v6}, Lcom/android/server/am/MARsDBManager;->-wrap8(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v18    # "extras":Landroid/os/Bundle;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    .line 414
    .restart local v18    # "extras":Landroid/os/Bundle;
    if-eqz v18, :cond_0

    .line 415
    const-string/jumbo v5, "packageName"

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 416
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 417
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v5, v6}, Lcom/android/server/am/MARsDBManager;->-wrap1(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v18    # "extras":Landroid/os/Bundle;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v5}, Lcom/android/server/am/MARsDBManager;->-wrap3(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_0

    .line 425
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v5}, Lcom/android/server/am/MARsDBManager;->-wrap5(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_0

    .line 431
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    .line 432
    .restart local v18    # "extras":Landroid/os/Bundle;
    if-eqz v18, :cond_0

    .line 433
    const-string/jumbo v5, "boot"

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 434
    .local v16, "boot":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/android/server/am/MARsDBManager;->-wrap4(Lcom/android/server/am/MARsDBManager;Z)V

    goto/16 :goto_0

    .line 438
    .end local v16    # "boot":Z
    .end local v18    # "extras":Landroid/os/Bundle;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    .line 439
    .restart local v18    # "extras":Landroid/os/Bundle;
    if-eqz v18, :cond_0

    .line 440
    const-string/jumbo v5, "callee"

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 441
    .local v11, "callee":Ljava/lang/String;
    const-string/jumbo v5, "caller"

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 442
    .local v12, "caller":Ljava/lang/String;
    const-string/jumbo v5, "isblock"

    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 443
    .local v13, "isblocked":Z
    const-string/jumbo v5, "requesttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 444
    .local v14, "requestTime":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static/range {v10 .. v15}, Lcom/android/server/am/MARsDBManager;->-wrap11(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto/16 :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
