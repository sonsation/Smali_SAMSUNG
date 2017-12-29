.class Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoostModeChangeProcessingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;
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
            "Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    .line 290
    return-void
.end method


# virtual methods
.method public buildAllItems(Landroid/content/Intent;)V
    .locals 27
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 296
    if-nez p1, :cond_0

    return-void

    .line 297
    :cond_0
    const-wide/16 v4, 0x0

    .line 301
    .local v4, "idCount":J
    const-string/jumbo v2, "key_item_max_brightness"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    .line 302
    .local v20, "extras":[Ljava/lang/Object;
    if-eqz v20, :cond_1

    .line 303
    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v21, v2, -0x5a

    .line 304
    .local v21, "percent":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    .line 297
    const-wide/16 v4, 0x0

    .line 304
    const-wide/16 v22, 0x1

    .end local v4    # "idCount":J
    .local v22, "idCount":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v9, 0x7f0b0243

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 305
    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v10, 0x7f0b0a63

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 304
    :goto_0
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    .line 309
    .end local v21    # "percent":I
    .end local v22    # "idCount":J
    .restart local v4    # "idCount":J
    :cond_1
    const-string/jumbo v2, "key_item_resolution"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    .end local v20    # "extras":[Ljava/lang/Object;
    check-cast v20, [Ljava/lang/Object;

    .line 310
    .restart local v20    # "extras":[Ljava/lang/Object;
    if-eqz v20, :cond_3

    .line 312
    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b06e0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, "resolutionStr":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getDisplayPxSize()Landroid/graphics/Point;

    move-result-object v24

    .line 325
    .local v24, "point":Landroid/graphics/Point;
    if-eqz v24, :cond_2

    .line 326
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float v25, v2, v3

    .line 327
    .local v25, "ratio":F
    const v2, 0x3fe38e39

    cmpl-float v2, v25, v2

    if-lez v2, :cond_2

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 332
    .end local v25    # "ratio":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v22, v4, v10

    .end local v4    # "idCount":J
    .restart local v22    # "idCount":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v9, 0x7f0b06db

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    .line 336
    .end local v7    # "resolutionStr":Ljava/lang/String;
    .end local v22    # "idCount":J
    .end local v24    # "point":Landroid/graphics/Point;
    .restart local v4    # "idCount":J
    :cond_3
    const-string/jumbo v2, "key_item_video_enhancer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    .end local v20    # "extras":[Ljava/lang/Object;
    check-cast v20, [Ljava/lang/Object;

    .line 337
    .restart local v20    # "extras":[Ljava/lang/Object;
    if-eqz v20, :cond_4

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v22, v4, v10

    .end local v4    # "idCount":J
    .restart local v22    # "idCount":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b04eb

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 339
    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0c86

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_2
    move-wide v10, v4

    .line 338
    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    .line 343
    .end local v22    # "idCount":J
    .restart local v4    # "idCount":J
    :cond_4
    const-string/jumbo v2, "key_item_uhq_upscaler"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    .end local v20    # "extras":[Ljava/lang/Object;
    check-cast v20, [Ljava/lang/Object;

    .line 344
    .restart local v20    # "extras":[Ljava/lang/Object;
    if-eqz v20, :cond_6

    .line 345
    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 346
    .local v26, "uhqUpscalerStatus":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b0c87

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 347
    .local v13, "uhqStatusString":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 348
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_b

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b0cd5

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 358
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v22, v4, v10

    .end local v4    # "idCount":J
    .restart local v22    # "idCount":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0bbc

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-wide v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    .line 363
    .end local v13    # "uhqStatusString":Ljava/lang/String;
    .end local v22    # "idCount":J
    .end local v26    # "uhqUpscalerStatus":I
    .restart local v4    # "idCount":J
    :cond_6
    const-string/jumbo v2, "key_item_game_launcher"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    .end local v20    # "extras":[Ljava/lang/Object;
    check-cast v20, [Ljava/lang/Object;

    .line 364
    .restart local v20    # "extras":[Ljava/lang/Object;
    if-eqz v20, :cond_7

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v14, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v8, 0x1

    add-long v22, v4, v8

    .end local v4    # "idCount":J
    .restart local v22    # "idCount":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0cd7

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 366
    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0c86

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    :goto_4
    move-wide/from16 v16, v4

    .line 365
    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    .line 370
    .end local v22    # "idCount":J
    .restart local v4    # "idCount":J
    :cond_7
    const-string/jumbo v2, "key_item_game_tools"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    .end local v20    # "extras":[Ljava/lang/Object;
    check-cast v20, [Ljava/lang/Object;

    .line 371
    .restart local v20    # "extras":[Ljava/lang/Object;
    if-eqz v20, :cond_8

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v14, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v8, 0x1

    add-long v22, v4, v8

    .end local v4    # "idCount":J
    .restart local v22    # "idCount":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0cd9

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 373
    const/4 v2, 0x0

    aget-object v2, v20, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0c86

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    :goto_5
    move-wide/from16 v16, v4

    .line 372
    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v22

    .line 295
    .end local v22    # "idCount":J
    .restart local v4    # "idCount":J
    :cond_8
    return-void

    .line 305
    .end local v4    # "idCount":J
    .restart local v21    # "percent":I
    .restart local v22    # "idCount":J
    :cond_9
    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 314
    .end local v21    # "percent":I
    .end local v22    # "idCount":J
    .restart local v4    # "idCount":J
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b06de

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "resolutionStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 317
    .end local v7    # "resolutionStr":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b06df

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "resolutionStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 339
    .end local v4    # "idCount":J
    .end local v7    # "resolutionStr":Ljava/lang/String;
    .restart local v22    # "idCount":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0c87

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 350
    .end local v22    # "idCount":J
    .restart local v4    # "idCount":J
    .restart local v13    # "uhqStatusString":Ljava/lang/String;
    .restart local v26    # "uhqUpscalerStatus":I
    :cond_b
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_5

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b0cd6

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 354
    :cond_c
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_5

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b0c86

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 366
    .end local v4    # "idCount":J
    .end local v13    # "uhqStatusString":Ljava/lang/String;
    .end local v26    # "uhqUpscalerStatus":I
    .restart local v22    # "idCount":J
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0c87

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_4

    .line 373
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0c87

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_5

    .line 312
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
    .line 396
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 411
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    .line 412
    .local v0, "s":Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->id:J

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
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    const/high16 v4, 0x3f000000    # 0.5f

    .line 417
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    .line 419
    .local v1, "s":Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;
    if-nez p2, :cond_1

    .line 420
    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {v0, v2, v8}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;)V

    .line 421
    .local v0, "holder":Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0401fa

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 422
    const v2, 0x7f110637

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 423
    const v2, 0x7f110638

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 424
    const v2, 0x7f110639

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    .line 425
    const v2, 0x7f110636

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    .line 426
    const v2, 0x7f110635

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    .line 427
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 432
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    .line 435
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget v2, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    packed-switch v2, :pswitch_data_0

    .line 463
    :goto_1
    return-object p2

    .line 429
    .end local v0    # "holder":Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;
    goto :goto_0

    .line 441
    :pswitch_0
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 443
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 444
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 445
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    .line 448
    :pswitch_1
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 450
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 451
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 452
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    .line 455
    :pswitch_2
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 457
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 458
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 459
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public playItemCheckingAnim()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x29a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 378
    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-le v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Z)Z

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    iput v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get11(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138a

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 386
    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    .line 377
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Z)Z

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get11(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138b

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
