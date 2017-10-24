.class Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;
.super Landroid/widget/BaseAdapter;
.source "PowerModeChangeProcessingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingAdapter"
.end annotation


# instance fields
.field private mAllItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    .line 362
    return-void
.end method


# virtual methods
.method public buildAllItems(Landroid/content/Intent;)V
    .locals 19
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 368
    if-nez p1, :cond_0

    return-void

    .line 369
    :cond_0
    const-wide/16 v4, 0x0

    .line 373
    .local v4, "idCount":J
    const-string/jumbo v2, "key_item_brightness"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, [Ljava/lang/Object;

    .line 374
    .local v17, "extras":[Ljava/lang/Object;
    if-eqz v17, :cond_2

    .line 376
    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v18, v2, -0x5a

    .line 377
    .local v18, "percent":I
    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v16

    .line 378
    .local v16, "brightnessStatus":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 382
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v8, 0x7f0b01b2

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 383
    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v9, 0x7f0b08b5

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 384
    :goto_0
    const/4 v8, 0x1

    aget-object v8, v17, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    .line 382
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v16    # "brightnessStatus":Ljava/lang/String;
    .end local v18    # "percent":I
    :cond_2
    const-string/jumbo v2, "key_item_resolution"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .end local v17    # "extras":[Ljava/lang/Object;
    check-cast v17, [Ljava/lang/Object;

    .line 389
    .restart local v17    # "extras":[Ljava/lang/Object;
    if-eqz v17, :cond_3

    .line 391
    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v3, 0x7f0b05a9

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, "resolutionStr":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v8, 0x7f0b05a4

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 405
    const/4 v8, 0x1

    aget-object v8, v17, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    .line 404
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v7    # "resolutionStr":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "key_item_device_performance"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .end local v17    # "extras":[Ljava/lang/Object;
    check-cast v17, [Ljava/lang/Object;

    .line 410
    .restart local v17    # "extras":[Ljava/lang/Object;
    if-eqz v17, :cond_4

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aad

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 412
    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aa4

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 413
    :goto_2
    const/4 v2, 0x1

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    move-wide v10, v4

    .line 411
    invoke-direct/range {v8 .. v15}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 418
    const-string/jumbo v2, "key_item_bg_network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .end local v17    # "extras":[Ljava/lang/Object;
    check-cast v17, [Ljava/lang/Object;

    .line 419
    .restart local v17    # "extras":[Ljava/lang/Object;
    if-eqz v17, :cond_5

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aae

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 421
    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aa5

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 422
    :goto_3
    const/4 v2, 0x1

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    move-wide v10, v4

    .line 420
    invoke-direct/range {v8 .. v15}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_5
    :goto_4
    const-string/jumbo v2, "key_item_aod"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .end local v17    # "extras":[Ljava/lang/Object;
    check-cast v17, [Ljava/lang/Object;

    .line 438
    .restart local v17    # "extras":[Ljava/lang/Object;
    if-eqz v17, :cond_6

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0405

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aa4

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 445
    :goto_5
    const/4 v2, 0x1

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    move-wide v10, v4

    .line 442
    invoke-direct/range {v8 .. v15}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_6
    const-string/jumbo v2, "key_item_location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .end local v17    # "extras":[Ljava/lang/Object;
    check-cast v17, [Ljava/lang/Object;

    .line 450
    .restart local v17    # "extras":[Ljava/lang/Object;
    if-eqz v17, :cond_7

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aaf

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 452
    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aa4

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 453
    :goto_6
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide v10, v4

    .line 451
    invoke-direct/range {v8 .. v15}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_7
    return-void

    .restart local v16    # "brightnessStatus":Ljava/lang/String;
    .restart local v18    # "percent":I
    :cond_8
    move-object/from16 v7, v16

    .line 383
    goto/16 :goto_0

    .line 393
    .end local v16    # "brightnessStatus":Ljava/lang/String;
    .end local v18    # "percent":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v3, 0x7f0b05a7

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "resolutionStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 396
    .end local v7    # "resolutionStr":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v3, 0x7f0b05a8

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "resolutionStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 412
    .end local v7    # "resolutionStr":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aa5

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 421
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aa4

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 426
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 427
    const-string/jumbo v2, "key_item_restrict_network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .end local v17    # "extras":[Ljava/lang/Object;
    check-cast v17, [Ljava/lang/Object;

    .line 428
    .restart local v17    # "extras":[Ljava/lang/Object;
    if-eqz v17, :cond_5

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0b0aba

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 430
    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0b0aa4

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 431
    :goto_7
    const/4 v2, 0x1

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    move-wide v10, v4

    .line 429
    invoke-direct/range {v8 .. v15}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 430
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0b0aa5

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    .line 443
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aa5

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 444
    :cond_e
    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aa5

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aa4

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 452
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0aa5

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_6

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 492
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    .line 493
    .local v0, "s":Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->id:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const v8, 0x7f0d01a3

    const/16 v7, 0x8

    const/4 v6, 0x0

    const v5, 0x7f0d01a5

    .line 498
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    .line 500
    .local v1, "s":Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;
    if-nez p2, :cond_1

    .line 501
    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-direct {v0, v2, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;)V

    .line 502
    .local v0, "holder":Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0401cd

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 503
    const v2, 0x7f11053d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 504
    const v2, 0x7f11053e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 505
    const v2, 0x7f11053f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    .line 506
    const v2, 0x7f11053c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    .line 507
    const v2, 0x7f11053b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    .line 508
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 513
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    .line 515
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 517
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-wrap0(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    iget-boolean v2, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->showingTime:Z

    if-eqz v2, :cond_2

    .line 521
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    :goto_1
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->time:I

    invoke-static {v3, v4, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    :goto_2
    iget v2, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    packed-switch v2, :pswitch_data_0

    .line 557
    :goto_3
    :pswitch_0
    return-object p2

    .line 510
    .end local v0    # "holder":Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;
    goto :goto_0

    .line 523
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 527
    :cond_3
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 532
    :pswitch_1
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 534
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 536
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 540
    :pswitch_2
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 542
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 544
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 545
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 548
    :pswitch_3
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 550
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 551
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 552
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 553
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 530
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method public playItemCheckingAnim()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 458
    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    .line 460
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->time:I

    invoke-static {v1, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-wrap1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-le v0, v1, :cond_1

    .line 463
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-set1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;Z)Z

    .line 464
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    iput v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    .line 466
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get12(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138a

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 467
    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    .line 457
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-set1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;Z)Z

    .line 470
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    .line 471
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get12(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138b

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
