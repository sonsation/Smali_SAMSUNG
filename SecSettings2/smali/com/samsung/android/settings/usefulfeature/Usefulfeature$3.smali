.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 329
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .param p1, "selfChange"    # Z

    .prologue
    const v7, 0x7f0b1ad9

    const v6, 0x7f0b1ad8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 332
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 333
    const-string/jumbo v8, "access_control_enabled"

    .line 332
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 334
    .local v4, "onInteractionConrol":I
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 335
    if-ne v4, v10, :cond_5

    .line 336
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 337
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 338
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 339
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 340
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b042a

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 359
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 360
    if-ne v4, v10, :cond_c

    .line 361
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 362
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 363
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 364
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 365
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap1()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 366
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b09a0

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 387
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 388
    if-ne v4, v10, :cond_14

    .line 389
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 390
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 391
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 392
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 393
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap1()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 394
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b099e

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 416
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 417
    if-ne v4, v10, :cond_1b

    .line 418
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 419
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 420
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 421
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 422
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap4()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 331
    :cond_3
    :goto_3
    return-void

    .line 342
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 345
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 346
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 347
    const-string/jumbo v8, "surface_palm_swipe"

    .line 346
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    .line 348
    .local v1, "mPalmSwipeCheck":Z
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 349
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 350
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 351
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v1, :cond_7

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 346
    .end local v1    # "mPalmSwipeCheck":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "mPalmSwipeCheck":Z
    goto :goto_4

    .line 352
    :cond_7
    const v5, 0x7f0b042a

    goto :goto_5

    .line 354
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v1, :cond_9

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_9
    move v5, v7

    .line 355
    goto :goto_6

    .line 368
    .end local v1    # "mPalmSwipeCheck":Z
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b099f

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 371
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 374
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 375
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 376
    const-string/jumbo v8, "motion_pick_up"

    .line 375
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v2, 0x1

    .line 377
    .local v2, "mPickUpCheck":Z
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 378
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 379
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 380
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v2, :cond_e

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 375
    .end local v2    # "mPickUpCheck":Z
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "mPickUpCheck":Z
    goto :goto_7

    .line 380
    :cond_e
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap1()Z

    move-result v5

    if-eqz v5, :cond_f

    const v5, 0x7f0b09a0

    goto :goto_8

    :cond_f
    const v5, 0x7f0b099f

    goto :goto_8

    .line 382
    :cond_10
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v2, :cond_11

    move v5, v6

    :goto_9
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_11
    move v5, v7

    .line 383
    goto :goto_9

    .line 396
    .end local v2    # "mPickUpCheck":Z
    :cond_12
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b099d

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 399
    :cond_13
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 402
    :cond_14
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 403
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 404
    const-string/jumbo v8, "motion_pick_up_to_call_out"

    .line 403
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_15

    const/4 v3, 0x1

    .line 405
    .local v3, "mPickUpToCallOutCheck":Z
    :goto_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 406
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 407
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 408
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v3, :cond_16

    move v5, v6

    :goto_b
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 403
    .end local v3    # "mPickUpToCallOutCheck":Z
    :cond_15
    const/4 v3, 0x0

    .restart local v3    # "mPickUpToCallOutCheck":Z
    goto :goto_a

    .line 408
    :cond_16
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap1()Z

    move-result v5

    if-eqz v5, :cond_17

    const v5, 0x7f0b099e

    goto :goto_b

    :cond_17
    const v5, 0x7f0b099d

    goto :goto_b

    .line 410
    :cond_18
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    .line 411
    if-eqz v3, :cond_19

    move v5, v6

    .line 410
    :goto_c
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_19
    move v5, v7

    .line 412
    goto :goto_c

    .line 424
    .end local v3    # "mPickUpToCallOutCheck":Z
    :cond_1a
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 427
    :cond_1b
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 428
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 429
    const-string/jumbo v8, "motion_merged_mute_pause"

    .line 428
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v0, 0x1

    .line 430
    .local v0, "mMergedMutePauseCheck":Z
    :goto_d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 431
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 432
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 433
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    .line 434
    if-eqz v0, :cond_1d

    .line 433
    :goto_e
    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 428
    .end local v0    # "mMergedMutePauseCheck":Z
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "mMergedMutePauseCheck":Z
    goto :goto_d

    .line 435
    :cond_1d
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap4()I

    move-result v6

    goto :goto_e

    .line 437
    :cond_1e
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    .line 438
    if-eqz v0, :cond_1f

    .line 437
    :goto_f
    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_1f
    move v6, v7

    .line 439
    goto :goto_f
.end method
