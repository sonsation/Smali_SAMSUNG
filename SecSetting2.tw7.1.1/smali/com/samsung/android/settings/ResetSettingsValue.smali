.class public Lcom/samsung/android/settings/ResetSettingsValue;
.super Ljava/lang/Object;
.source "ResetSettingsValue.java"


# static fields
.field private static final PSEUDO_DUAL_SPEAKER_ENABLED:Z


# instance fields
.field public isSupportLightSensor:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationFilename_2:Ljava/lang/String;

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneFilename_2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_PSEUDO_DUAL_SPEAKER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/ResetSettingsValue;->PSEUDO_DUAL_SPEAKER_ENABLED:Z

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->isSupportLightSensor:Z

    .line 78
    return-void
.end method

.method private SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "URIsetting"    # Landroid/net/Uri;
    .param p3, "URIInternalMedia"    # Landroid/net/Uri;
    .param p4, "settingString"    # Ljava/lang/String;
    .param p5, "defaultMediaName"    # Ljava/lang/String;

    .prologue
    .line 517
    const/4 v9, 0x0

    .line 518
    .local v9, "existingSettingValue":Ljava/lang/String;
    const/4 v10, 0x0

    .line 519
    .local v10, "resultMediaCursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 520
    .local v11, "resultSettingCursor":Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .line 521
    .local v12, "rowId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 522
    .local v11, "resultSettingCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_data like \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 524
    .local v10, "resultMediaCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 525
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 526
    const/4 v8, 0x0

    .line 527
    .local v8, "bResult":Z
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 528
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 529
    move-object/from16 v0, p3

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 530
    .local v8, "bResult":Z
    const-string/jumbo v2, "ResetSettingsValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Write again. Default "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]  Result is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v8    # "bResult":Z
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 538
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 516
    .end local v10    # "resultMediaCursor":Landroid/database/Cursor;
    :goto_2
    return-void

    .line 532
    .restart local v10    # "resultMediaCursor":Landroid/database/Cursor;
    :cond_0
    const-string/jumbo v2, "ResetSettingsValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Warning! getCount() of Cursor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in internal DB is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 536
    :cond_1
    const-string/jumbo v2, "ResetSettingsValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Warning! Cursor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in internal DB is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 540
    .local v10, "resultMediaCursor":Landroid/database/Cursor;
    :cond_2
    const-string/jumbo v2, "ResetSettingsValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Warning! Cursor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in setting DB is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private loadDefRingtone()V
    .locals 6

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->setDefaultRingtoneFileNames()V

    .line 546
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 547
    .local v3, "URIdefaultSound":Landroid/net/Uri;
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 548
    .local v2, "URIsetting":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 550
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "alarm_alert"

    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string/jumbo v4, "notification_sound"

    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultNotificationFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string/jumbo v4, "ringtone"

    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultRingtoneFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const-string/jumbo v4, "ringtone_2"

    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string/jumbo v4, "notification_sound_2"

    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultNotificationFilename_2:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_0
    return-void
.end method

.method private static readSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "sales_code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    return-object v0
.end method

.method private resetAccessibilitySettings()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 563
    const-string/jumbo v7, "ResetSettingsValue"

    const-string/jumbo v8, "resetAccessibilitySettings - start "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 566
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 569
    .local v5, "mAudioManager":Landroid/media/AudioManager;
    const-string/jumbo v7, "enabled_accessibility_services"

    const-string/jumbo v8, ""

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 570
    const-string/jumbo v7, "accessibility_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 573
    const-string/jumbo v7, "lcd_curtain"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    const-string/jumbo v7, "high_text_contrast_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 579
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 580
    const-string/jumbo v7, "rapid_key_input"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 581
    const-string/jumbo v7, "rapid_key_input_menu_checked"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 588
    :goto_0
    const-string/jumbo v7, "accessibility_large_pointer_icon"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    const-string/jumbo v7, "speak_password"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    const-string/jumbo v7, "accessiblity_font_switch"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 597
    const-string/jumbo v7, "show_button_background"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 600
    const-string/jumbo v7, "finger_magnifier"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    const-string/jumbo v7, "hover_zoom_value"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 602
    const-string/jumbo v7, "hover_zoom_magnifier_size"

    invoke-static {v1, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 603
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "magnifier_pref"

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 604
    .local v6, "mSharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 607
    const-string/jumbo v7, "accessibility_display_magnification_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    const-string/jumbo v7, "greyscale_mode"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    const-string/jumbo v7, "high_contrast"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    const-string/jumbo v7, "color_blind"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    const-string/jumbo v7, "color_blind_test"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    const-string/jumbo v7, "enable_accessibility_global_gesture_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 623
    const-string/jumbo v7, "flash_notification"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 626
    const-string/jumbo v7, "all_sound_off"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 629
    const-string/jumbo v7, "hearing_aid"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 630
    const-string/jumbo v7, "call_hearing_aid"

    const-string/jumbo v8, "OFF"

    invoke-virtual {v5, v7, v8}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string/jumbo v7, "HACSetting=OFF"

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 634
    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 635
    .local v2, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    const-string/jumbo v7, "accessibility_captioning_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 636
    const-string/jumbo v7, "accessibility_captioning_foreground_color"

    iget v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    const-string/jumbo v7, "accessibility_captioning_background_color"

    iget v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 638
    const-string/jumbo v7, "accessibility_captioning_edge_type"

    iget v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 639
    const-string/jumbo v7, "accessibility_captioning_edge_color"

    iget v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 640
    const-string/jumbo v7, "accessibility_captioning_window_color"

    iget v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 641
    const-string/jumbo v7, "accessibility_captioning_preset"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 642
    const-string/jumbo v7, "accessibility_captioning_preset"

    iget-object v8, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 643
    const-string/jumbo v7, "accessibility_captioning_font_scale"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 644
    const-string/jumbo v7, "accessibility_captioning_locale"

    const-string/jumbo v8, ""

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 647
    const-string/jumbo v7, "sound_balance"

    const/16 v8, 0x32

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mono_audio_db"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 653
    sget-boolean v7, Lcom/samsung/android/settings/ResetSettingsValue;->PSEUDO_DUAL_SPEAKER_ENABLED:Z

    if-eqz v7, :cond_0

    .line 654
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "pseudo_stereo_sound_settings"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.samsung.android.app.assistantmenu"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 658
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 659
    const-string/jumbo v8, "assistant_menu"

    .line 658
    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 660
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 661
    const-string/jumbo v8, "assistant_menu_dominant_hand_type"

    .line 660
    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 662
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "assistant_menu_eam_enable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 663
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "assistant_menu_pointer_speed"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 664
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "assistant_menu_pointer_size"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 665
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "assistant_menu_pad_size"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 668
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 671
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.action.ASSISTANTMENU_SETTINGS_RESET"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v4, "mAssistantEditMenuReset":Landroid/content/Intent;
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, "assistantMenu":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.samsung.android.app.assistantmenu"

    .line 676
    const-string/jumbo v9, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    .line 675
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 677
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 680
    .end local v0    # "assistantMenu":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "mAssistantEditMenuReset":Landroid/content/Intent;
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "accessibility_display_inversion_enabled"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 681
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "accessibility_display_daltonizer_enabled"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 684
    const-string/jumbo v7, "air_motion_wake_up"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    const-string/jumbo v7, "long_press_timeout"

    const/16 v8, 0x1f4

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 690
    const-string/jumbo v7, "access_control_use"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 691
    const-string/jumbo v7, "access_control_enabled"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 692
    const-string/jumbo v7, "access_control_time_set_hour"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 693
    const-string/jumbo v7, "access_control_time_set_min"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 694
    const-string/jumbo v7, "access_control_power_button"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 695
    const-string/jumbo v7, "access_control_volume_button"

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 696
    const-string/jumbo v7, "access_control_keyboard_block"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 699
    const-string/jumbo v7, "direct_access"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 700
    const-string/jumbo v7, "direct_accessibility"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 701
    const-string/jumbo v7, "direct_talkback"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 702
    const-string/jumbo v7, "direct_negative"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 703
    const-string/jumbo v7, "direct_color_adjustment"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 704
    const-string/jumbo v7, "direct_access_control"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 705
    const-string/jumbo v7, "direct_s_talkback"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 706
    const-string/jumbo v7, "direct_universal_switch"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 707
    const-string/jumbo v7, "direct_samsung_screen_reader"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 708
    const-string/jumbo v7, "direct_access_magnifier"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 709
    const-string/jumbo v7, "direct_greyscale"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 712
    const-string/jumbo v7, "notification_reminder"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 713
    const-string/jumbo v7, "notification_reminder_selectable"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 714
    const-string/jumbo v7, "time_key"

    const/16 v8, 0x3c

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 715
    const-string/jumbo v7, "notification_reminder_vibrate"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 716
    const-string/jumbo v7, "notification_reminder_led_indicator"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 717
    const-string/jumbo v7, "notification_reminder_app_list"

    const-string/jumbo v8, "selectAll"

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 720
    const-string/jumbo v7, "easy_interaction"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 722
    const-string/jumbo v7, "ResetSettingsValue"

    const-string/jumbo v8, "resetAccessibilitySettings - finish "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void

    .line 583
    .end local v2    # "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v6    # "mSharedPref":Landroid/content/SharedPreferences;
    :cond_2
    const-string/jumbo v7, "rapid_key_input"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    const-string/jumbo v7, "rapid_key_input_menu_checked"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private resetBrightnessSettings()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 475
    const-string/jumbo v5, "ResetSettingsValue"

    const-string/jumbo v6, "reset Brightness Settings"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    .line 477
    const-string/jumbo v6, "SEC_FLOATING_FEATURE_LCD_CONFIG_CONTROL_AUTO_BRIGHTNESS"

    const/4 v7, 0x2

    .line 476
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 477
    const/4 v6, 0x3

    .line 476
    if-lt v5, v6, :cond_0

    .line 478
    const-string/jumbo v5, "ResetSettingsValue"

    const-string/jumbo v6, "reset Usage pattern"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 480
    .local v3, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->resetPersonalAutoBrightnessData()V

    .line 483
    .end local v3    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 484
    const v6, 0x10e0067

    .line 483
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 485
    .local v2, "defaultBrightness":I
    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 486
    const-string/jumbo v6, "screen_brightness"

    .line 485
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "automaticAvailable":Z
    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v0

    .line 490
    .local v0, "automaticAvailable":Z
    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 491
    const v6, 0x1120023

    .line 490
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 492
    .local v1, "config_val":Z
    const-string/jumbo v5, "ResetSettingsValue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "automaticAvailable= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", config_val= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string/jumbo v5, "MTR"

    invoke-static {}, Lcom/samsung/android/settings/ResetSettingsValue;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 494
    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 495
    const-string/jumbo v6, "screen_brightness_mode"

    .line 494
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 498
    const-string/jumbo v6, "screen_brightness_mode"

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 497
    :goto_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 498
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private resetSpenSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 470
    const-string/jumbo v1, "pen_detect_mode_disabled"

    .line 469
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 471
    invoke-static {v2}, Lcom/samsung/android/hardware/SemHardwareInterface;->setEPenSavingmode(I)Z

    .line 467
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .prologue
    .line 502
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 504
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 506
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 508
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const-string/jumbo v0, "ro.config.ringtone_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    .line 511
    const-string/jumbo v0, "ro.config.notification_sound_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mDefaultNotificationFilename_2:Ljava/lang/String;

    .line 501
    :cond_0
    return-void
.end method


# virtual methods
.method public loadCSC()V
    .locals 2

    .prologue
    .line 726
    new-instance v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;

    iget-object v1, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/csc/CscSettingsLoader;-><init>(Landroid/content/Context;)V

    .line 727
    .local v0, "CscSettings":Lcom/samsung/android/settings/csc/CscSettingsLoader;
    invoke-virtual {v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->update()V

    .line 725
    return-void
.end method

.method public resetAllSettings(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetAccessibilitySettings()V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetGlobalSettings()V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetDNDSettings()V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetSystemSettings()V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetSecureSettings()V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetFontSettings()V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetDisplaySizeSettings()V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->loadCSC()V

    .line 103
    return-void
.end method

.method public resetDNDSettings()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "ResetSettingsValue"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public resetDisplaySizeSettings()V
    .locals 24

    .prologue
    .line 174
    const/4 v9, 0x1

    .line 175
    .local v9, "CLEAR_RESOLUTION":I
    const/4 v8, 0x2

    .line 177
    .local v8, "CLEAR_DENSITY":I
    const/4 v10, 0x3

    .line 178
    .local v10, "clearMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v17, 0x1

    .line 179
    .local v17, "isPSMEnabled":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sem_perfomance_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v18, 0x1

    .line 180
    .local v18, "isPerformanceEnblaed":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/16 v16, 0x1

    .line 182
    .local v16, "isEasymodeEnabled":Z
    :goto_2
    const-string/jumbo v3, "WQHD,FHD,HD"

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v17, :cond_0

    if-eqz v18, :cond_1

    .line 184
    :cond_0
    const/4 v10, 0x2

    .line 186
    :cond_1
    if-eqz v16, :cond_2

    .line 187
    and-int/lit8 v10, v10, -0x3

    .line 190
    :cond_2
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 191
    .local v13, "default_size":Landroid/graphics/Point;
    const/4 v12, -0x1

    .line 193
    .local v12, "default_density":I
    const/16 v19, 0x1

    .line 194
    .local v19, "resolution":I
    const/16 v14, 0x1e0

    .line 199
    .local v14, "density":I
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 200
    .local v2, "windowManager":Landroid/view/IWindowManager;
    const/4 v3, 0x0

    invoke-interface {v2, v3, v13}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 201
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v12

    .line 202
    const-string/jumbo v3, "ResetSettingsValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetDisplaySizeSettings() default LCD size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string/jumbo v3, "ResetSettingsValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetDisplaySizeSettings() default density : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "display_size_forced"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 206
    .local v21, "sizeStr":Ljava/lang/String;
    if-eqz v21, :cond_3

    const-string/jumbo v3, ""

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 210
    :cond_3
    iget v11, v13, Landroid/graphics/Point;->x:I

    .line 213
    .local v11, "current_screen_width":I
    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 244
    const-string/jumbo v3, "ResetSettingsValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetDisplaySizeSettings() clearMode +"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_4
    return-void

    .line 178
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    .end local v11    # "current_screen_width":I
    .end local v12    # "default_density":I
    .end local v13    # "default_size":Landroid/graphics/Point;
    .end local v14    # "density":I
    .end local v16    # "isEasymodeEnabled":Z
    .end local v17    # "isPSMEnabled":Z
    .end local v18    # "isPerformanceEnblaed":Z
    .end local v19    # "resolution":I
    .end local v21    # "sizeStr":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    .restart local v17    # "isPSMEnabled":Z
    goto/16 :goto_0

    .line 179
    :cond_5
    const/16 v18, 0x0

    .restart local v18    # "isPerformanceEnblaed":Z
    goto/16 :goto_1

    .line 180
    :cond_6
    const/16 v16, 0x0

    .restart local v16    # "isEasymodeEnabled":Z
    goto/16 :goto_2

    .line 207
    .restart local v2    # "windowManager":Landroid/view/IWindowManager;
    .restart local v12    # "default_density":I
    .restart local v13    # "default_size":Landroid/graphics/Point;
    .restart local v14    # "density":I
    .restart local v19    # "resolution":I
    .restart local v21    # "sizeStr":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 208
    .local v20, "sizeArray":[Ljava/lang/String;
    if-eqz v20, :cond_8

    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_8

    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .restart local v11    # "current_screen_width":I
    goto :goto_3

    .end local v11    # "current_screen_width":I
    :cond_8
    const/16 v11, 0x5a0

    .restart local v11    # "current_screen_width":I
    goto :goto_3

    .line 215
    .end local v20    # "sizeArray":[Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, "ResetSettingsValue"

    const-string/jumbo v4, "resetDisplaySizeSettings() Clear Resolution&density "

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, v13, Landroid/graphics/Point;->x:I

    const/16 v4, 0x5a0

    if-lt v3, v4, :cond_9

    .line 218
    iget v3, v13, Landroid/graphics/Point;->x:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v3, v13, Landroid/graphics/Point;->y:I

    int-to-double v6, v3

    const-wide/high16 v22, 0x3fe8000000000000L    # 0.75

    mul-double v6, v6, v22

    double-to-int v5, v6

    int-to-double v6, v12

    const-wide/high16 v22, 0x3fe8000000000000L    # 0.75

    mul-double v6, v6, v22

    double-to-int v6, v6

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensityEx(IIIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 248
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    .end local v11    # "current_screen_width":I
    .end local v21    # "sizeStr":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 249
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ResetSettingsValue"

    const-string/jumbo v4, "windowManager API exception!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 220
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v2    # "windowManager":Landroid/view/IWindowManager;
    .restart local v11    # "current_screen_width":I
    .restart local v21    # "sizeStr":Ljava/lang/String;
    :cond_9
    :try_start_1
    iget v4, v13, Landroid/graphics/Point;->x:I

    iget v5, v13, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    const/4 v7, 0x1

    move v6, v12

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensityEx(IIIIZ)V

    goto :goto_4

    .line 224
    :pswitch_1
    mul-int v3, v12, v11

    iget v4, v13, Landroid/graphics/Point;->x:I

    div-int v14, v3, v4

    .line 225
    const-string/jumbo v3, "ResetSettingsValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetDisplaySizeSettings() Clear Density density : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v3, v14}, Lcom/android/settings/Utils;->ApplyForcedDisplayDensity(Landroid/content/Context;I)V

    goto/16 :goto_4

    .line 229
    :pswitch_2
    const-string/jumbo v3, "ResetSettingsValue"

    const-string/jumbo v4, "resetDisplaySizeSettings() Clear Resolution"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, v13, Landroid/graphics/Point;->x:I

    const/16 v4, 0x5a0

    if-lt v3, v4, :cond_a

    .line 231
    const/16 v19, 0x1

    .line 241
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move/from16 v0, v19

    invoke-static {v3, v0, v4}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    goto/16 :goto_4

    .line 233
    :cond_a
    iget v3, v13, Landroid/graphics/Point;->x:I

    const/16 v4, 0x5a0

    if-lt v3, v4, :cond_b

    .line 234
    const/16 v19, 0x2

    goto :goto_5

    .line 235
    :cond_b
    iget v3, v13, Landroid/graphics/Point;->x:I

    const/16 v4, 0x2d0

    if-le v3, v4, :cond_c

    iget v3, v13, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v4, 0x438

    if-gt v3, v4, :cond_c

    .line 236
    const/16 v19, 0x1

    .line 235
    goto :goto_5

    .line 238
    :cond_c
    const/16 v19, 0x0

    goto :goto_5

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetFontSettings()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 127
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "prefs"

    invoke-virtual {v10, v11, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 129
    .local v8, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 130
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v10, "selectedFont"

    const-string/jumbo v11, "MONOTYPE"

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    :try_start_0
    new-instance v6, Lcom/samsung/android/settings/flipfont/FontWriter;

    invoke-direct {v6}, Lcom/samsung/android/settings/flipfont/FontWriter;-><init>()V

    .line 135
    .local v6, "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "sans.loc"

    .line 136
    const-string/jumbo v12, "default#default"

    .line 135
    invoke-virtual {v6, v10, v11, v12}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 140
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v6    # "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    :goto_0
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "font_size"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 145
    .local v9, "previousIndex":I
    const-string/jumbo v10, "persist.sys.font_clarity"

    const-string/jumbo v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v7, "i":Landroid/content/Intent;
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const/4 v11, 0x5

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v0

    .line 149
    .local v0, "EXTRA_LARGE_FONT_SCALE":F
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v10

    if-le v9, v10, :cond_0

    .line 150
    const-string/jumbo v10, "large_font"

    invoke-virtual {v7, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    :cond_0
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEFAULT_FONT_SIZE"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 161
    const v4, 0x3f8ccccd    # 1.1f

    .line 165
    .local v4, "fontScale":F
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lcom/android/settings/Utils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    .line 167
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v5

    .line 168
    .local v5, "fontSize":I
    iget-object v10, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "font_size"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    return-void

    .line 163
    .end local v4    # "fontScale":F
    .end local v5    # "fontSize":I
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "fontScale":F
    goto :goto_1

    .line 141
    .end local v0    # "EXTRA_LARGE_FONT_SCALE":F
    .end local v4    # "fontScale":F
    .end local v7    # "i":Landroid/content/Intent;
    .end local v9    # "previousIndex":I
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public resetGlobalSettings()V
    .locals 20

    .prologue
    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v7

    .line 382
    .local v7, "initPolicy":Landroid/app/NotificationManager$Policy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    .line 383
    .local v13, "rules":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;>;"
    const/4 v11, 0x0

    .line 384
    .local v11, "rule":Landroid/app/AutomaticZenRule;
    const/4 v6, 0x0

    .line 387
    .local v6, "dndId":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/util/Map$Entry;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/util/Map$Entry;

    .line 388
    .local v10, "rt":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    const/16 v16, 0x0

    array-length v0, v10

    move/from16 v18, v0

    move/from16 v17, v16

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v12, v10, v17

    .line 389
    .local v12, "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    const-string/jumbo v19, "twschedule"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/AutomaticZenRule;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 390
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "rule":Landroid/app/AutomaticZenRule;
    check-cast v11, Landroid/app/AutomaticZenRule;

    .line 391
    .local v11, "rule":Landroid/app/AutomaticZenRule;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "dndId":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 396
    .end local v11    # "rule":Landroid/app/AutomaticZenRule;
    .end local v12    # "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_0
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v14

    .line 398
    :goto_1
    sget-object v16, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    move-object/from16 v0, v16

    iput-object v0, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 399
    const/16 v16, 0x16

    move/from16 v0, v16

    iput v0, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 400
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 401
    const/16 v16, 0x7

    move/from16 v0, v16

    iput v0, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 402
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 403
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    .line 404
    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    .line 405
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v11}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 407
    iget v9, v7, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 408
    .local v9, "priorityCategories":I
    iget v15, v7, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 409
    .local v15, "suppressedVisualEffects":I
    and-int/lit8 v9, v9, -0x11

    .line 410
    and-int/lit8 v9, v9, -0x9

    .line 411
    and-int/lit8 v9, v9, -0x5

    .line 412
    and-int/lit8 v9, v9, -0x3

    .line 413
    and-int/lit8 v9, v9, -0x2

    .line 414
    or-int/lit8 v9, v9, 0x20

    .line 415
    and-int/lit8 v15, v15, -0x2

    .line 416
    and-int/lit8 v15, v15, -0x3

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v16

    new-instance v17, Landroid/app/NotificationManager$Policy;

    .line 418
    iget v0, v7, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    move/from16 v18, v0

    iget v0, v7, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    move/from16 v19, v0

    .line 417
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v9, v1, v2, v15}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0e0032

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    if-eqz v16, :cond_5

    const/4 v3, 0x1

    .line 424
    .local v3, "airplaneMode":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "airplane_mode_on"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "airplane_mode_on"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 426
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v16, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v16, "state"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 431
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0e0034

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 432
    .local v5, "autoTimeZone":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "auto_time_zone"

    .line 433
    if-eqz v5, :cond_6

    const/16 v16, 0x1

    .line 432
    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0e0033

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 435
    .local v4, "autoTime":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "auto_time"

    .line 436
    if-eqz v4, :cond_7

    const/16 v16, 0x1

    .line 435
    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 438
    const-string/jumbo v16, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "emergency_tone"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 445
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "data_powersaving_mode"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 446
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v16, "com.samsung.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .restart local v8    # "intent":Landroid/content/Intent;
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "tap_to_icon"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 456
    const-string/jumbo v16, "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_2

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "navigationbar_color"

    const v18, -0xf0f10

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "navigationbar_use_theme_default"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "navigationbar_recently_used_color"

    const-string/jumbo v18, ""

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "navigationbar_key_order"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "navigationbar_unlock_with_home_button"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "navigationbar_pressure_user_level"

    const/16 v18, 0x3

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "navigationbar_hide_bar"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    :cond_2
    return-void

    .line 388
    .end local v3    # "airplaneMode":I
    .end local v4    # "autoTime":Z
    .end local v5    # "autoTimeZone":Z
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "priorityCategories":I
    .end local v15    # "suppressedVisualEffects":I
    .restart local v6    # "dndId":Ljava/lang/String;
    .local v11, "rule":Landroid/app/AutomaticZenRule;
    .restart local v12    # "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_3
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    goto/16 :goto_0

    .line 397
    .end local v6    # "dndId":Ljava/lang/String;
    .end local v11    # "rule":Landroid/app/AutomaticZenRule;
    .end local v12    # "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_4
    const/4 v14, 0x0

    .local v14, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    goto/16 :goto_1

    .line 422
    .end local v14    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .restart local v9    # "priorityCategories":I
    .restart local v15    # "suppressedVisualEffects":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "airplaneMode":I
    goto/16 :goto_2

    .line 433
    .restart local v5    # "autoTimeZone":Z
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 436
    .restart local v4    # "autoTime":Z
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 441
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "emergency_tone"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5
.end method

.method public resetSecureSettings()V
    .locals 7

    .prologue
    const v6, 0x1120071

    const v5, 0x1120070

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screensaver_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screensaver_activate_on_dock"

    .line 366
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 365
    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screensaver_activate_on_sleep"

    .line 368
    iget-object v4, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_components"

    .line 376
    const-string/jumbo v2, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    .line 375
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 361
    return-void

    :cond_0
    move v0, v2

    .line 366
    goto :goto_0

    :cond_1
    move v1, v2

    .line 368
    goto :goto_1

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screensaver_activate_on_dock"

    .line 371
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 370
    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screensaver_activate_on_sleep"

    .line 373
    iget-object v4, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 372
    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_3
    move v0, v2

    .line 371
    goto :goto_3

    :cond_4
    move v1, v2

    .line 373
    goto :goto_4
.end method

.method public resetSystemSettings()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->loadDefRingtone()V

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetSpenSettings()V

    .line 260
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 261
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 263
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "gps"

    invoke-static {v0, v7, v12}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 264
    const-string/jumbo v7, "network"

    invoke-static {v0, v7, v12}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 267
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_CONFIG_ONEHAND_MODE_POLICY"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "onehandText":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 269
    const-string/jumbo v7, "DefaultOn"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 270
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "any_screen_enabled"

    invoke-static {v7, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    :goto_0
    const-string/jumbo v7, "GestureType"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 275
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "one_handed_op_wakeup_type"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "one_handed_op_show_hard_keys"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "is_enabled"

    invoke-virtual {v2, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 288
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "db_popup_view_shortcut"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "db_split_screen_view_shortcut"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "db_snap_window_shortcut"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 294
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 295
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_offload_network_notify"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    :cond_1
    :goto_2
    const-string/jumbo v7, "ro.build.scafe.version"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "scafeVersion":Ljava/lang/String;
    const-string/jumbo v7, "2017A"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "2016B"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "2016A"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "2015A"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 302
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "skt_phone20_settings"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v13, :cond_c

    const/4 v3, 0x1

    .line 303
    .local v3, "isSKTDial":Z
    :goto_3
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/android/settings/Utils;->lockScreenShortcutDefault(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "def":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "lock_application_shortcut"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    .end local v1    # "def":Ljava/lang/String;
    .end local v3    # "isSKTDial":Z
    :cond_3
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.samsung.android.app.aodservice"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 308
    const-string/jumbo v7, "OFF"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_AOD_ConfigDefStatus"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 311
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "aod_mode"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    :goto_4
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "blue_light_filter"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "blue_light_filter_opacity"

    const/4 v9, 0x5

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "blue_light_filter_scheduled"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "blue_light_filter_type"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "blue_light_filter_on_time"

    const-wide/16 v10, 0x474

    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 320
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "blue_light_filter_off_time"

    const-wide/16 v10, 0x1a4

    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 322
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 323
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "volumelimit_on"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "volumelimit_set_password"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "volume_limiter_value"

    .line 326
    const/16 v9, 0xf

    .line 325
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sec_display_temperature_red"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sec_display_temperature_blue"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sec_display_temperature_green"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    const-string/jumbo v7, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 334
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "settings_ui"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsValue;->resetBrightnessSettings()V

    .line 339
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "screen_off_timeout_backup"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 340
    .local v6, "timeout_backup":I
    if-lez v6, :cond_7

    const-string/jumbo v7, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 343
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_off_timeout"

    const-string/jumbo v7, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const v7, 0xea60

    :goto_5
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 348
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "screen_off_pocket"

    invoke-static {v7, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 354
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_share"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    :goto_8
    return-void

    .line 272
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "scafeVersion":Ljava/lang/String;
    .end local v6    # "timeout_backup":I
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "any_screen_enabled"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 277
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "one_handed_op_wakeup_type"

    invoke-static {v7, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 280
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "any_screen_enabled"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "one_handed_op_wakeup_type"

    invoke-static {v7, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 297
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_offload_network_notify"

    invoke-static {v7, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 302
    .restart local v5    # "scafeVersion":Ljava/lang/String;
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "isSKTDial":Z
    goto/16 :goto_3

    .line 309
    .end local v3    # "isSKTDial":Z
    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "aod_mode"

    invoke-static {v7, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 341
    .restart local v6    # "timeout_backup":I
    :cond_e
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "screen_off_timeout"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 343
    :cond_f
    const/16 v7, 0x7530

    goto/16 :goto_5

    .line 350
    :cond_10
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "screen_off_pocket"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 356
    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_share"

    invoke-static {v7, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8
.end method
