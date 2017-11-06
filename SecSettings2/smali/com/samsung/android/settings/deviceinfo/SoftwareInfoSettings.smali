.class public Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SoftwareInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$1;,
        Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunDisallowedBySystem:Z

.field mHits:[J

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->sSalesCode:Ljava/lang/String;

    .line 470
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$1;-><init>()V

    .line 469
    sput-object v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mHits:[J

    .line 828
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;-><init>(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 85
    return-void
.end method

.method private getCMCCBuildNumberSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, "buildNumber":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "ro.build.date"

    .line 568
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0fa8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 567
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "buildTime":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v6, " "

    invoke-direct {v4, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .local v4, "stBuildTime":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 576
    .local v2, "date":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "stCount":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 577
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 576
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 581
    :cond_0
    const/4 v6, 0x6

    if-eq v5, v6, :cond_1

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 585
    :cond_1
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string/jumbo v7, "Jan"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 586
    const-string/jumbo v6, "01"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    .line 612
    :goto_1
    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_d

    .line 613
    const-string/jumbo v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 614
    const/4 v7, 0x1

    aget-object v7, v2, v7

    .line 613
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 614
    const-string/jumbo v7, "-"

    .line 613
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 614
    const-string/jumbo v7, "0"

    .line 613
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 614
    const/4 v7, 0x2

    aget-object v7, v2, v7

    .line 613
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 587
    :cond_2
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string/jumbo v7, "Feb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 588
    const-string/jumbo v6, "02"

    const/4 v7, 0x1

    aput-object v6, v2, v7
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 619
    .end local v2    # "date":[Ljava/lang/String;
    .end local v4    # "stBuildTime":Ljava/util/StringTokenizer;
    .end local v5    # "stCount":I
    :catch_0
    move-exception v3

    .line 620
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 589
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "date":[Ljava/lang/String;
    .restart local v4    # "stBuildTime":Ljava/util/StringTokenizer;
    .restart local v5    # "stCount":I
    :cond_3
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, v2, v6

    const-string/jumbo v7, "Mar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 590
    const-string/jumbo v6, "03"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    goto :goto_1

    .line 591
    :cond_4
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string/jumbo v7, "Apr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 592
    const-string/jumbo v6, "04"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    goto :goto_1

    .line 593
    :cond_5
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string/jumbo v7, "May"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 594
    const-string/jumbo v6, "05"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    goto/16 :goto_1

    .line 595
    :cond_6
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string/jumbo v7, "Jun"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 596
    const-string/jumbo v6, "06"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    goto/16 :goto_1

    .line 597
    :cond_7
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string/jumbo v7, "Jul"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 598
    const-string/jumbo v6, "07"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    goto/16 :goto_1

    .line 599
    :cond_8
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string/jumbo v7, "Aug"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    .line 600
    const-string/jumbo v6, "08"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    goto/16 :goto_1

    .line 601
    :cond_9
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string/jumbo v7, "Sep"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    .line 602
    const-string/jumbo v6, "09"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    goto/16 :goto_1

    .line 603
    :cond_a
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string/jumbo v7, "Oct"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    .line 604
    const-string/jumbo v6, "10"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    goto/16 :goto_1

    .line 605
    :cond_b
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string/jumbo v7, "Nov"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_c

    .line 606
    const-string/jumbo v6, "11"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    goto/16 :goto_1

    .line 608
    :cond_c
    const-string/jumbo v6, "12"

    const/4 v7, 0x1

    aput-object v6, v2, v7

    goto/16 :goto_1

    .line 616
    :cond_d
    const-string/jumbo v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 617
    const/4 v7, 0x1

    aget-object v7, v2, v7

    .line 616
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 617
    const-string/jumbo v7, "-"

    .line 616
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 617
    const/4 v7, 0x2

    aget-object v7, v2, v7

    .line 616
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "SoftwareInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 442
    const-string/jumbo v3, "\' preference"

    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 449
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0fa8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 458
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0fa8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private showKnoxVersion()V
    .locals 29

    .prologue
    .line 626
    const-string/jumbo v10, ""

    .line 627
    .local v10, "knoxVersion":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 630
    .local v9, "knoxMajorVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 631
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v23

    .line 633
    .local v23, "version":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 634
    .local v11, "last":C
    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    .line 635
    .local v13, "last_str":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 637
    .local v12, "last_int":I
    if-lez v12, :cond_13

    .line 638
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b07fa

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 645
    :goto_0
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 654
    .end local v11    # "last":C
    .end local v12    # "last_int":I
    .end local v13    # "last_str":Ljava/lang/String;
    .end local v23    # "version":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_1
    const-string/jumbo v26, "enterprise_policy_new"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 655
    .local v5, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVer()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_1

    .line 656
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b07fd

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVer()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 657
    .local v20, "standardVersion":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 666
    .end local v5    # "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .end local v20    # "standardVersion":Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_2

    .line 667
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b07fe

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 668
    .local v15, "premiumVersion":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 677
    .end local v15    # "premiumVersion":Ljava/lang/String;
    :cond_2
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->getInternalSdkVersion()Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "customizationVersion":Ljava/lang/String;
    const-string/jumbo v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 679
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0802

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 680
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    .line 689
    .end local v3    # "customizationVersion":Ljava/lang/String;
    :cond_3
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_4

    .line 690
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b07fc

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "containerVersion":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    .line 700
    .end local v2    # "containerVersion":Ljava/lang/String;
    :cond_4
    :goto_5
    :try_start_5
    const-string/jumbo v26, ""

    const-string/jumbo v27, "net.knoxisl.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 701
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0806

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "net.knoxisl.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 702
    .local v7, "imVersion":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v10

    .line 711
    .end local v7    # "imVersion":Ljava/lang/String;
    :cond_5
    :goto_6
    :try_start_6
    const-string/jumbo v26, ""

    const-string/jumbo v27, "net.knoxscep.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 712
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0805

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "net.knoxscep.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 713
    .local v16, "scepVersion":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v10

    .line 722
    .end local v16    # "scepVersion":Ljava/lang/String;
    :cond_6
    :goto_7
    :try_start_7
    const-string/jumbo v26, ""

    const-string/jumbo v27, "sys.enterprise.billing.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    .line 723
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0800

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "sys.enterprise.billing.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 724
    .local v6, "enterpriseBillingVersion":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v10

    .line 733
    .end local v6    # "enterpriseBillingVersion":Ljava/lang/String;
    :cond_7
    :goto_8
    :try_start_8
    const-string/jumbo v26, ""

    const-string/jumbo v27, "sys.enterprise.otp.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 734
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0801

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "sys.enterprise.otp.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 735
    .local v14, "otpVersion":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v10

    .line 744
    .end local v14    # "otpVersion":Ljava/lang/String;
    :cond_8
    :goto_9
    :try_start_9
    const-string/jumbo v26, ""

    invoke-static {}, Landroid/os/SELinux;->getSEAndroidVersion()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 745
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0803

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Landroid/os/SELinux;->getSEAndroidVersion()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 746
    .local v18, "seAndroidVersion":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v10

    .line 755
    .end local v18    # "seAndroidVersion":Ljava/lang/String;
    :cond_9
    :goto_a
    :try_start_a
    const-string/jumbo v26, ""

    const-string/jumbo v27, "net.knoxsso.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    .line 756
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0804

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "net.knoxsso.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 757
    .local v19, "ssoVersion":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v10

    .line 766
    .end local v19    # "ssoVersion":Ljava/lang/String;
    :cond_a
    :goto_b
    :try_start_b
    const-string/jumbo v26, ""

    const-string/jumbo v27, "net.knox.shareddevice.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 767
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0807

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "net.knox.shareddevice.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 768
    .local v17, "sdVersion":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v10

    .line 778
    .end local v17    # "sdVersion":Ljava/lang/String;
    :cond_b
    :goto_c
    :try_start_c
    const-string/jumbo v26, ""

    const-string/jumbo v27, "ro.config.timaversion"

    const-string/jumbo v28, "No Policy Version"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 781
    const-string/jumbo v26, "3.0"

    const-string/jumbo v27, "ro.config.timaversion"

    const-string/jumbo v28, "No Policy Version"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 782
    const/16 v24, 0x0

    .line 784
    .local v24, "version_fragmenting":I
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v26

    sget-object v27, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v26

    if-ltz v26, :cond_14

    .line 785
    const-string/jumbo v21, "3.3"

    .line 788
    .local v21, "timaMajorVersion":Ljava/lang/String;
    :goto_d
    const-string/jumbo v26, "true"

    const-string/jumbo v27, "ro.config.dmverity"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 782
    const/16 v26, 0x0

    .line 789
    add-int/lit8 v24, v26, 0x1

    .line 790
    :cond_c
    const-string/jumbo v26, "true"

    const-string/jumbo v27, "ro.config.rkp"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 791
    add-int/lit8 v24, v24, 0x2

    .line 792
    :cond_d
    const-string/jumbo v26, "true"

    const-string/jumbo v27, "ro.config.kap"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 793
    add-int/lit8 v24, v24, 0x4

    .line 794
    :cond_e
    const-string/jumbo v26, "true"

    const-string/jumbo v27, "ro.config.kap_default_on"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 795
    add-int/lit8 v24, v24, 0x8

    .line 796
    :cond_f
    const/16 v26, 0xa

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_15

    .line 797
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b07fb

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ".00"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 803
    .end local v21    # "timaMajorVersion":Ljava/lang/String;
    .end local v24    # "version_fragmenting":I
    .local v22, "timaVersion":Ljava/lang/String;
    :goto_e
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v10

    .line 812
    .end local v22    # "timaVersion":Ljava/lang/String;
    :cond_10
    :goto_f
    :try_start_d
    const-string/jumbo v26, ""

    const-string/jumbo v27, "net.knoxvpn.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 813
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b07ff

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "net.knoxvpn.version"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 814
    .local v25, "vpnVersion":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    move-result-object v10

    .line 821
    .end local v25    # "vpnVersion":Ljava/lang/String;
    :cond_11
    :goto_10
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_12

    .line 822
    const-string/jumbo v26, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_12
    return-void

    .line 640
    .restart local v11    # "last":C
    .restart local v12    # "last_int":I
    .restart local v13    # "last_str":Ljava/lang/String;
    .restart local v23    # "version":Ljava/lang/String;
    :cond_13
    const/16 v26, 0x2e

    :try_start_e
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 641
    .local v8, "index":I
    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 642
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b07fa

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    move-result-object v9

    goto/16 :goto_0

    .line 647
    .end local v8    # "index":I
    .end local v11    # "last":C
    .end local v12    # "last_int":I
    .end local v13    # "last_str":Ljava/lang/String;
    .end local v23    # "version":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 648
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 659
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 660
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 670
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 671
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 682
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 683
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 693
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 694
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 704
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 705
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 715
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 716
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 726
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 727
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 737
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .line 738
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 748
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v4

    .line 749
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 759
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v4

    .line 760
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 770
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v4

    .line 771
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 787
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v24    # "version_fragmenting":I
    :cond_14
    :try_start_f
    const-string/jumbo v21, "3.2"

    .restart local v21    # "timaMajorVersion":Ljava/lang/String;
    goto/16 :goto_d

    .line 799
    :cond_15
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b07fb

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ".0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "timaVersion":Ljava/lang/String;
    goto/16 :goto_e

    .line 801
    .end local v21    # "timaMajorVersion":Ljava/lang/String;
    .end local v22    # "timaVersion":Ljava/lang/String;
    .end local v24    # "version_fragmenting":I
    :cond_16
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b07fb

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "ro.config.timaversion"

    const-string/jumbo v28, "No Policy Version"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    move-result-object v22

    .restart local v22    # "timaVersion":Ljava/lang/String;
    goto/16 :goto_e

    .line 805
    .end local v22    # "timaVersion":Ljava/lang/String;
    :catch_c
    move-exception v4

    .line 806
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 816
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v4

    .line 817
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "SoftwareInfoSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KnoxVersion Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mUm:Landroid/os/UserManager;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    .line 137
    const v19, 0x7f08011f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->addPreferencesFromResource(I)V

    .line 139
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->sSalesCode:Ljava/lang/String;

    .line 142
    const-string/jumbo v19, "Enabled"

    const-string/jumbo v20, "ro.security.mdpp.ux"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 143
    const-string/jumbo v19, "security_sw_version"

    invoke-static {}, Lcom/android/settings/Utils;->showSecuritySWVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v19, "security_sw_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.knox.kccagent"

    invoke-static/range {v19 .. v20}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.knox.kccagent"

    const-string/jumbo v21, "com.sec.knox.kccc.agent.activities.KCCCSettings"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/Utils;->isActivityExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.enterprise.knox.cloudmdm.smdms.agent.kc"

    invoke-static/range {v19 .. v20}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string/jumbo v20, "knox_configurator"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :goto_1
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v6

    .line 169
    .local v6, "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    sget-object v19, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v19

    if-ltz v19, :cond_a

    .line 170
    const-string/jumbo v19, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->showKnoxVersion()V

    .line 177
    :goto_2
    const-string/jumbo v19, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    sget-object v20, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    const-string/jumbo v19, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 180
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v15

    .line 181
    .local v15, "patch":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 182
    const-string/jumbo v19, "security_patch"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_Setting_ChangeApprovedModemVersion"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 190
    const-string/jumbo v19, "none"

    const-string/jumbo v20, "ril.approved_modemver"

    const-string/jumbo v21, "none"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 193
    :cond_0
    const-string/jumbo v4, "gsm.version.baseband"

    .line 195
    .local v4, "basebandVerProp":Ljava/lang/String;
    :goto_4
    const-string/jumbo v19, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string/jumbo v20, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    :cond_1
    const-string/jumbo v19, "VZW"

    sget-object v20, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 203
    const-string/jumbo v19, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getFormattedKernelVersionVZW()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 209
    const-string/jumbo v19, "build_number"

    sget-object v20, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getCMCCBuildNumberSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_6
    const-string/jumbo v19, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 216
    const/16 v18, 0x0

    .line 218
    .local v18, "seStatus":Ljava/lang/String;
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 219
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b17b1

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 221
    .local v18, "seStatus":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 224
    :try_start_0
    const-string/jumbo v19, ""

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 225
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 226
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 234
    :cond_2
    :goto_7
    :try_start_1
    const-string/jumbo v19, ""

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyBuildDate()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 235
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyBuildDate()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 241
    :cond_3
    :goto_8
    const-string/jumbo v19, "SoftwareInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "DeviceInfoSettings seStatus : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_9
    const-string/jumbo v19, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string/jumbo v20, "selinux_status"

    .line 252
    const-string/jumbo v21, "ro.build.selinux"

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string/jumbo v19, "selinux.policy_version"

    const-string/jumbo v20, "No Policy Version"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, "policyVersion":Ljava/lang/String;
    const-string/jumbo v19, "GOOGLE_POLICY"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string/jumbo v19, "No Policy Version"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 257
    :cond_4
    const-string/jumbo v19, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 261
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.samsung.android.app.omcagent"

    invoke-static/range {v19 .. v20}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 262
    const-string/jumbo v13, ""

    .line 263
    .local v13, "omcSummary":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Version: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "OMC.configuration.version"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 264
    .local v14, "omcVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Sales code: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 265
    .local v17, "salesCode":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Network code: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ro.csc.omcnw_code"

    const-string/jumbo v21, ""

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 266
    .local v11, "networkCode":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Device ID: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ro.serialno"

    const-string/jumbo v21, "No ID"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 267
    .local v12, "omcDeviceID":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Carrier ID: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ro.boot.carrierid"

    const-string/jumbo v21, "No ID"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, "carrierID":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 270
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 275
    :goto_a
    const-string/jumbo v19, "omc_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v5    # "carrierID":Ljava/lang/String;
    .end local v11    # "networkCode":Ljava/lang/String;
    .end local v12    # "omcDeviceID":Ljava/lang/String;
    .end local v13    # "omcSummary":Ljava/lang/String;
    .end local v14    # "omcVersion":Ljava/lang/String;
    .end local v17    # "salesCode":Ljava/lang/String;
    :goto_b
    const-string/jumbo v19, "persist.sys.iss.flag_altermodel"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 281
    const-string/jumbo v19, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v19, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 283
    const-string/jumbo v19, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v19, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 287
    :cond_6
    const/4 v8, 0x0

    .line 288
    .local v8, "isSemAvailable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 289
    const-string/jumbo v20, "com.samsung.feature.samsung_experience_mobile"

    .line 288
    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 290
    const/4 v8, 0x1

    .line 295
    :goto_c
    if-eqz v8, :cond_14

    sget v19, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v20, 0x138e4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_14

    .line 296
    sget v19, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    move/from16 v0, v19

    div-int/lit16 v9, v0, 0x2710

    .line 297
    .local v9, "majorVersion":I
    sget v19, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0x2710

    move/from16 v19, v0

    div-int/lit8 v10, v19, 0x64

    .line 298
    .local v10, "minorVersion":I
    const-string/jumbo v19, "samsung_experience_version"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v9    # "majorVersion":I
    .end local v10    # "minorVersion":I
    :goto_d
    new-instance v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 132
    return-void

    .line 147
    .end local v4    # "basebandVerProp":Ljava/lang/String;
    .end local v6    # "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .end local v8    # "isSemAvailable":Z
    .end local v15    # "patch":Ljava/lang/String;
    .end local v16    # "policyVersion":Ljava/lang/String;
    .end local v18    # "seStatus":Ljava/lang/String;
    :cond_7
    const-string/jumbo v19, "security_sw_version"

    invoke-static {}, Lcom/android/settings/Utils;->getASKSVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v19, "security_sw_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 157
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string/jumbo v20, "knox_custom_configurator"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string/jumbo v20, "knox_configurator"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 163
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string/jumbo v20, "knox_custom_configurator"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 173
    .restart local v6    # "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_a
    const-string/jumbo v19, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 184
    .restart local v15    # "patch":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string/jumbo v20, "security_patch"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 191
    :cond_c
    const-string/jumbo v4, "ril.approved_modemver"

    .restart local v4    # "basebandVerProp":Ljava/lang/String;
    goto/16 :goto_4

    .line 205
    :cond_d
    const-string/jumbo v19, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 211
    :cond_e
    const-string/jumbo v19, "build_number"

    sget-object v20, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 228
    .restart local v18    # "seStatus":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 229
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "SoftwareInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 237
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 238
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v19, "SoftwareInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 244
    .end local v7    # "e":Ljava/lang/Exception;
    .local v18, "seStatus":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b17b0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .local v18, "seStatus":Ljava/lang/String;
    goto/16 :goto_9

    .line 246
    .local v18, "seStatus":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b17af

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .local v18, "seStatus":Ljava/lang/String;
    goto/16 :goto_9

    .line 273
    .restart local v5    # "carrierID":Ljava/lang/String;
    .restart local v11    # "networkCode":Ljava/lang/String;
    .restart local v12    # "omcDeviceID":Ljava/lang/String;
    .restart local v13    # "omcSummary":Ljava/lang/String;
    .restart local v14    # "omcVersion":Ljava/lang/String;
    .restart local v16    # "policyVersion":Ljava/lang/String;
    .restart local v17    # "salesCode":Ljava/lang/String;
    :cond_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a

    .line 277
    .end local v5    # "carrierID":Ljava/lang/String;
    .end local v11    # "networkCode":Ljava/lang/String;
    .end local v12    # "omcDeviceID":Ljava/lang/String;
    .end local v13    # "omcSummary":Ljava/lang/String;
    .end local v14    # "omcVersion":Ljava/lang/String;
    .end local v17    # "salesCode":Ljava/lang/String;
    :cond_12
    const-string/jumbo v19, "omc_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 292
    .restart local v8    # "isSemAvailable":Z
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 300
    :cond_14
    const-string/jumbo v19, "samsung_experience_version"

    goto/16 :goto_d
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 343
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 342
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SoftwareInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 348
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "firmware_version"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 350
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mHits:[J

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mHits:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v6, v4, v10, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 351
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 352
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mHits:[J

    aget-wide v4, v3, v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 353
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v4, "no_fun"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mFunDisallowedBySystem:Z

    if-eqz v3, :cond_1

    .line 358
    :cond_0
    :goto_0
    const-string/jumbo v3, "SoftwareInfoSettings"

    const-string/jumbo v4, "Sorry, no fun for you!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v10

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 356
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 355
    invoke-static {v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 362
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android"

    .line 364
    const-class v4, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 367
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SoftwareInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "build_number"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 373
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-nez v3, :cond_5

    return v6

    .line 376
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 377
    return v6

    .line 380
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v4, "no_debugging_features"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 381
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v3, :cond_7

    .line 382
    iget-boolean v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    if-eqz v3, :cond_8

    .line 386
    :cond_7
    :goto_2
    return v6

    .line 383
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 384
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 383
    invoke-static {v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 389
    :cond_9
    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitCountdown:I

    if-lez v3, :cond_d

    .line 390
    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitCountdown:I

    .line 391
    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitCountdown:I

    if-nez v3, :cond_b

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "development"

    invoke-virtual {v3, v4, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 394
    const-string/jumbo v4, "show"

    .line 392
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 395
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_a

    .line 396
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 398
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0fa9

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 400
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 402
    invoke-static {v3}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v3

    .line 404
    const-class v4, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-virtual {v3, v4, v6, v6}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 406
    :cond_b
    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitCountdown:I

    if-lez v3, :cond_3

    .line 407
    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitCountdown:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    .line 408
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_c

    .line 409
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 411
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 412
    iget v5, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitCountdown:I

    .line 411
    new-array v6, v6, [Ljava/lang/Object;

    .line 412
    iget v7, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitCountdown:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const v7, 0x7f130003

    .line 411
    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 414
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 416
    :cond_d
    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitCountdown:I

    if-gez v3, :cond_3

    .line 417
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_e

    .line 418
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 420
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0faa

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 422
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 424
    :cond_f
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "security_sw_version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 425
    const-string/jumbo v3, "SoftwareInfoSettings"

    const-string/jumbo v4, "Security SW Version : On Click"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 426
    :cond_10
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "knox_version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 427
    const-string/jumbo v3, "SoftwareInfoSettings"

    const-string/jumbo v4, "KnoxVersion : Clicked"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 314
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "development"

    .line 316
    const/4 v2, 0x0

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    const-string/jumbo v1, "show"

    .line 317
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 315
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, -0x1

    .line 315
    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitCountdown:I

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 319
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 321
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mFunDisallowedBySystem:Z

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 323
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 325
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SoftwareInfo"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 313
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
