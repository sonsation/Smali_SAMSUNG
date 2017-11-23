.class public Lcom/android/settings/deviceinfo/StorageSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageSettings$1;,
        Lcom/android/settings/deviceinfo/StorageSettings$2;,
        Lcom/android/settings/deviceinfo/StorageSettings$3;,
        Lcom/android/settings/deviceinfo/StorageSettings$4;,
        Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$MountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;,
        Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    }
.end annotation


# static fields
.field static final COLOR_PRIVATE:[I

.field static final COLOR_PUBLIC:I

.field static final COLOR_WARNING:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mIsCallPrivteVolume:Z


# instance fields
.field private isPreferenceTreeClick:Z

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mExternalCategory:Landroid/preference/PreferenceCategory;

.field private mInternalCategory:Landroid/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/StorageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/deviceinfo/StorageSettings;->mIsCallPrivteVolume:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/deviceinfo/StorageSettings;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "titleRes"    # I
    .param p3, "requestCode"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragmentForBixby(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    const-string/jumbo v0, "#ff9e9e9e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    .line 95
    const-string/jumbo v0, "#fff4511e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_WARNING:I

    .line 97
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 98
    const-string/jumbo v1, "#ff26a69a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    .line 99
    const-string/jumbo v1, "#ffab47bc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 100
    const-string/jumbo v1, "#fff2a600"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 101
    const-string/jumbo v1, "#ffec407a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 102
    const-string/jumbo v1, "#ffc0ca33"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 97
    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    .line 113
    sput-boolean v3, Lcom/android/settings/deviceinfo/StorageSettings;->mIsCallPrivteVolume:Z

    .line 623
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$2;-><init>()V

    .line 622
    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 667
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$3;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$3;-><init>()V

    .line 666
    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->isPreferenceTreeClick:Z

    .line 149
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 682
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$4;-><init>(Lcom/android/settings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 86
    return-void
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    return v0

    .line 167
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private refresh()V
    .locals 38

    .prologue
    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v11

    .line 176
    .local v11, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 182
    const/16 v24, 0x0

    .line 183
    .local v24, "privateCount":I
    const-wide/16 v28, 0x0

    .line 184
    .local v28, "privateUsedBytes":J
    const-wide/16 v26, 0x0

    .line 186
    .local v26, "privateTotalBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v37

    .line 187
    .local v37, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    invoke-interface/range {v37 .. v37}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .line 190
    .local v35, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {v35 .. v35}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 191
    sget-object v4, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "privateCount":I
    .local v25, "privateCount":I
    sget-object v5, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    array-length v5, v5

    rem-int v5, v24, v5

    aget v10, v4, v5

    .line 193
    .local v10, "color":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v19

    .line 194
    .local v19, "mSharedVolume":Landroid/os/storage/VolumeInfo;
    new-instance v18, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    move-object/from16 v2, v19

    invoke-direct {v0, v11, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    .line 196
    .local v18, "mMeasure":Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    .line 197
    new-instance v5, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    sget v6, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    move-object/from16 v0, v35

    invoke-direct {v5, v11, v0, v6}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    .line 196
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 198
    invoke-virtual/range {v35 .. v35}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 199
    invoke-virtual/range {v35 .. v35}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v22

    .line 201
    .local v22, "path":Ljava/io/File;
    new-instance v34, Landroid/os/StatFs;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 202
    .local v34, "statFs":Landroid/os/StatFs;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v20

    .line 203
    .local v20, "mountReadableTotalBytes":J
    const-string/jumbo v4, "/data"

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getDeviceTotalSize(J)J

    move-result-wide v20

    .line 205
    :cond_1
    invoke-virtual/range {v34 .. v34}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    sub-long v4, v20, v4

    add-long v28, v28, v4

    .line 206
    add-long v26, v26, v20

    move/from16 v24, v25

    .end local v25    # "privateCount":I
    .restart local v24    # "privateCount":I
    goto :goto_0

    .line 209
    .end local v10    # "color":I
    .end local v18    # "mMeasure":Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;
    .end local v19    # "mSharedVolume":Landroid/os/storage/VolumeInfo;
    .end local v20    # "mountReadableTotalBytes":J
    .end local v22    # "path":Ljava/io/File;
    .end local v34    # "statFs":Landroid/os/StatFs;
    :cond_2
    invoke-virtual/range {v35 .. v35}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 210
    const-string/jumbo v4, "privatemode"

    invoke-virtual/range {v35 .. v35}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    .line 212
    new-instance v5, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    sget v6, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    move-object/from16 v0, v35

    invoke-direct {v5, v11, v0, v6}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    .line 211
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 218
    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v32

    .line 219
    .local v32, "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "rec$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/storage/VolumeRecord;

    .line 220
    .local v30, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    if-nez v4, :cond_4

    .line 223
    const v4, 0x7f02045d

    invoke-virtual {v11, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 224
    .local v15, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 225
    sget v4, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    invoke-virtual {v15, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 227
    new-instance v23, Landroid/preference/Preference;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 228
    .local v23, "pref":Landroid/preference/Preference;
    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    const v4, 0x104045f

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 231
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 237
    .end local v15    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v23    # "pref":Landroid/preference/Preference;
    .end local v30    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v14

    .line 238
    .local v14, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "disk$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .line 239
    .local v12, "disk":Landroid/os/storage/DiskInfo;
    iget v4, v12, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v4, :cond_6

    iget-wide v4, v12, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 240
    new-instance v23, Landroid/preference/Preference;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 241
    .restart local v23    # "pref":Landroid/preference/Preference;
    invoke-virtual {v12}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v12}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    const v4, 0x104045c

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 244
    const v4, 0x7f02026c

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 249
    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    .end local v23    # "pref":Landroid/preference/Preference;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    move-wide/from16 v0, v28

    invoke-static {v4, v0, v1, v5}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v33

    .line 250
    .local v33, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v5, 0x7f0b14db

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/StorageSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    .line 251
    move-object/from16 v0, v33

    iget-object v7, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v33

    iget-object v7, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 250
    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 253
    move-wide/from16 v0, v26

    invoke-static {v11, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 252
    const v6, 0x7f0b14dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Lcom/android/settings/deviceinfo/StorageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-lez v4, :cond_9

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 264
    return-void

    .line 268
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_b

    sget-boolean v4, Lcom/android/settings/deviceinfo/StorageSettings;->mIsCallPrivteVolume:Z

    if-eqz v4, :cond_c

    .line 270
    :cond_b
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 268
    if-eqz v4, :cond_10

    .line 271
    :cond_c
    const/16 v17, 0x1

    .line 272
    .local v17, "isSinglePane":Z
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/SettingsActivity;

    if-eqz v4, :cond_d

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v17

    .line 276
    .end local v17    # "isSinglePane":Z
    :cond_d
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/settings/deviceinfo/StorageSettings;->mIsCallPrivteVolume:Z

    .line 277
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 278
    .local v9, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "android.os.storage.extra.VOLUME_ID"

    const-string/jumbo v5, "private"

    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "relative_link"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 289
    :cond_e
    if-nez v17, :cond_f

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, ":settings:prefs"

    .line 291
    const/4 v6, 0x1

    .line 290
    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 293
    :cond_f
    const-class v4, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 296
    :goto_3
    if-eqz v17, :cond_10

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->finish()V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/Settings$StorageSettingsActivity;

    if-eqz v4, :cond_10

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 173
    .end local v9    # "args":Landroid/os/Bundle;
    :cond_10
    return-void

    .line 282
    .restart local v9    # "args":Landroid/os/Bundle;
    :cond_11
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 283
    .local v16, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    .line 284
    const-string/jumbo v5, "com.android.settings.Settings$PrivateVolumeRelativeSettingsActivity"

    .line 283
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string/jumbo v4, "android.os.storage.extra.VOLUME_ID"

    const-string/jumbo v5, "private"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string/jumbo v4, "relative_link"

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .end local v9    # "args":Landroid/os/Bundle;
    .end local v13    # "disk$iterator":Ljava/util/Iterator;
    .end local v14    # "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v24    # "privateCount":I
    .end local v31    # "rec$iterator":Ljava/util/Iterator;
    .end local v32    # "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    .end local v33    # "result":Landroid/text/format/Formatter$BytesResult;
    .restart local v10    # "color":I
    .restart local v18    # "mMeasure":Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;
    .restart local v19    # "mSharedVolume":Landroid/os/storage/VolumeInfo;
    .restart local v25    # "privateCount":I
    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_12
    move/from16 v24, v25

    .end local v25    # "privateCount":I
    .restart local v24    # "privateCount":I
    goto/16 :goto_0
.end method

.method private startFragmentForBixby(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 6
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "titleRes"    # I
    .param p3, "requestCode"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 719
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 718
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f0b1999

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 119
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 134
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 136
    const v1, 0x7f08005e

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    .line 138
    const-string/jumbo v1, "storage_internal"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    .line 139
    const-string/jumbo v1, "storage_external"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    .line 141
    new-instance v1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    .line 143
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    .line 146
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 321
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "StorageSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 329
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, "key":Ljava/lang/String;
    instance-of v0, p2, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    if-eqz v0, :cond_a

    .line 332
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v7}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v8

    .line 334
    .local v8, "vol":Landroid/os/storage/VolumeInfo;
    if-nez v8, :cond_0

    .line 335
    return v4

    .line 338
    :cond_0
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_3

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "volume_unmounted"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    .line 341
    .local v6, "dialog":Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    .end local v6    # "dialog":Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    :cond_1
    :goto_0
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 348
    return v9

    .line 342
    .restart local v6    # "dialog":Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    :cond_2
    const-string/jumbo v0, "StorageSettings"

    const-string/jumbo v1, "Close already open dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v6}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->dismiss()V

    .line 344
    const/4 v6, 0x0

    .local v6, "dialog":Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    goto :goto_0

    .line 349
    .end local v6    # "dialog":Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    :cond_3
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 350
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b14e7

    invoke-static {p0, v1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 351
    return v9

    .line 353
    :cond_4
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-eq v0, v9, :cond_5

    .line 354
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 355
    :cond_5
    return v9

    .line 359
    :cond_6
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v9, :cond_7

    .line 360
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 361
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 364
    return v9

    .line 366
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->isPreferenceTreeClick:Z

    if-eqz v0, :cond_9

    .line 394
    :cond_8
    return v4

    .line 371
    :cond_9
    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->isPreferenceTreeClick:Z

    .line 372
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 373
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-class v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 376
    return v9

    .line 380
    .end local v5    # "args":Landroid/os/Bundle;
    .end local v8    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_a
    const-string/jumbo v0, "disk:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 382
    const v0, 0x7f0b14e8

    invoke-static {p0, v0, v7}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 383
    return v9

    .line 387
    :cond_b
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 388
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 390
    const v3, 0x7f0b14cc

    move-object v0, p0

    move-object v1, p0

    .line 389
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 391
    return v9
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 308
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 309
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->isPreferenceTreeClick:Z

    .line 310
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 311
    sput-boolean v2, Lcom/android/settings/deviceinfo/StorageSettings;->mIsCallPrivteVolume:Z

    .line 312
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    .line 315
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "StorageSettings"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 307
    return-void
.end method
