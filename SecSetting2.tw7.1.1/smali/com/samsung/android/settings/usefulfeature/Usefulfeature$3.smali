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
    .line 360
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 361
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .param p1, "selfChange"    # Z

    .prologue
    const v7, 0x7f0b1d09

    const v6, 0x7f0b1d08

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 364
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 365
    const-string/jumbo v8, "access_control_enabled"

    .line 364
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 366
    .local v4, "onInteractionConrol":I
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 367
    if-ne v4, v10, :cond_6

    .line 368
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 369
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 370
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 371
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 372
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b04f2

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 391
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 392
    if-ne v4, v10, :cond_d

    .line 393
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 394
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 395
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 396
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 397
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 398
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b0b4e

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 419
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 420
    if-ne v4, v10, :cond_15

    .line 421
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 422
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 423
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 424
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 425
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 426
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b0b4c

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 448
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 449
    if-ne v4, v10, :cond_1c

    .line 450
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 451
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 452
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 453
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 454
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap8()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 475
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 476
    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v5

    if-nez v5, :cond_21

    .line 477
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 363
    :cond_4
    :goto_4
    return-void

    .line 374
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 377
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 378
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 379
    const-string/jumbo v8, "surface_palm_swipe"

    .line 378
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v1, 0x1

    .line 380
    .local v1, "mPalmSwipeCheck":Z
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 381
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 382
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 383
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v1, :cond_8

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 378
    .end local v1    # "mPalmSwipeCheck":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "mPalmSwipeCheck":Z
    goto :goto_5

    .line 384
    :cond_8
    const v5, 0x7f0b04f2

    goto :goto_6

    .line 386
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v1, :cond_a

    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_a
    move v5, v7

    .line 387
    goto :goto_7

    .line 400
    .end local v1    # "mPalmSwipeCheck":Z
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b0b4d

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 403
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 406
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 407
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 408
    const-string/jumbo v8, "motion_pick_up"

    .line 407
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v2, 0x1

    .line 409
    .local v2, "mPickUpCheck":Z
    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 410
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 411
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 412
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v2, :cond_f

    move v5, v6

    :goto_9
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 407
    .end local v2    # "mPickUpCheck":Z
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "mPickUpCheck":Z
    goto :goto_8

    .line 412
    :cond_f
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_10

    const v5, 0x7f0b0b4e

    goto :goto_9

    :cond_10
    const v5, 0x7f0b0b4d

    goto :goto_9

    .line 414
    :cond_11
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v2, :cond_12

    move v5, v6

    :goto_a
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_12
    move v5, v7

    .line 415
    goto :goto_a

    .line 428
    .end local v2    # "mPickUpCheck":Z
    :cond_13
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f0b0b4b

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 431
    :cond_14
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 434
    :cond_15
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 435
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 436
    const-string/jumbo v8, "motion_pick_up_to_call_out"

    .line 435
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_16

    const/4 v3, 0x1

    .line 437
    .local v3, "mPickUpToCallOutCheck":Z
    :goto_b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 438
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 439
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 440
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v3, :cond_17

    move v5, v6

    :goto_c
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 435
    .end local v3    # "mPickUpToCallOutCheck":Z
    :cond_16
    const/4 v3, 0x0

    .restart local v3    # "mPickUpToCallOutCheck":Z
    goto :goto_b

    .line 440
    :cond_17
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_18

    const v5, 0x7f0b0b4c

    goto :goto_c

    :cond_18
    const v5, 0x7f0b0b4b

    goto :goto_c

    .line 442
    :cond_19
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    .line 443
    if-eqz v3, :cond_1a

    move v5, v6

    .line 442
    :goto_d
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_1a
    move v5, v7

    .line 444
    goto :goto_d

    .line 456
    .end local v3    # "mPickUpToCallOutCheck":Z
    :cond_1b
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 459
    :cond_1c
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 460
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 461
    const-string/jumbo v8, "motion_merged_mute_pause"

    .line 460
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v0, 0x1

    .line 462
    .local v0, "mMergedMutePauseCheck":Z
    :goto_e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 463
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 464
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 465
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    .line 466
    if-eqz v0, :cond_1e

    .line 465
    :goto_f
    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 460
    .end local v0    # "mMergedMutePauseCheck":Z
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "mMergedMutePauseCheck":Z
    goto :goto_e

    .line 467
    :cond_1e
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap8()I

    move-result v6

    goto :goto_f

    .line 469
    :cond_1f
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    .line 470
    if-eqz v0, :cond_20

    .line 469
    :goto_10
    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_20
    move v6, v7

    .line 471
    goto :goto_10

    .line 479
    .end local v0    # "mMergedMutePauseCheck":Z
    :cond_21
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4
.end method
