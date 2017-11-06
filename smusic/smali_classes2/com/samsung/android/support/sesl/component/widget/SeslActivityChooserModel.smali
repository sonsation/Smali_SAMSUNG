.class Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "SeslActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$PersistHistoryAsyncTask;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$DefaultSorter;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivitySorter;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field static final LOG_TAG:Ljava/lang/String;

.field static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivitySorter;

.field mCanReadHistoricalData:Z

.field final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const-class v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "historyFileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 346
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 259
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$DefaultSorter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$DefaultSorter;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivitySorter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivitySorter;

    .line 264
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryMaxSize:I

    .line 274
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mCanReadHistoricalData:Z

    .line 285
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 293
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 298
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mReloadActivities:Z

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mContext:Landroid/content/Context;

    .line 348
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xml"

    .line 349
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private addHistoricalRecord(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;)Z
    .locals 2
    .param p1, "historicalRecord"    # Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;

    .prologue
    .line 728
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 729
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 730
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 731
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 732
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->persistHistoricalDataIfNeeded()V

    .line 733
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 734
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->notifyChanged()V

    .line 736
    :cond_0
    return v0
.end method

.method private ensureConsistentState()V
    .locals 2

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->loadActivitiesIfNeeded()Z

    move-result v0

    .line 656
    .local v0, "stateChanged":Z
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->readHistoricalDataIfNeeded()Z

    move-result v1

    or-int/2addr v0, v1

    .line 657
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 658
    if-eqz v0, :cond_0

    .line 659
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 660
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->notifyChanged()V

    .line 662
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "historyFileName"    # Ljava/lang/String;

    .prologue
    .line 330
    sget-object v2, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 331
    :try_start_0
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    .line 332
    .local v0, "dataModel":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;

    .end local v0    # "dataModel":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    .restart local v0    # "dataModel":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    monitor-exit v2

    return-object v0

    .line 337
    .end local v0    # "dataModel":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadActivitiesIfNeeded()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 688
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mReloadActivities:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    .line 689
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mReloadActivities:Z

    .line 690
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 691
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 692
    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 693
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 694
    .local v2, "resolveInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 695
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 696
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v4, 0x1

    .line 700
    .end local v0    # "i":I
    .end local v2    # "resolveInfoCount":I
    .end local v3    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return v4
.end method

.method private persistHistoricalDataIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 566
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v1, :cond_0

    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No preceding call to #readHistoricalData"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v1, :cond_2

    .line 578
    :cond_1
    :goto_0
    return-void

    .line 572
    :cond_2
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 573
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 574
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$PersistHistoryAsyncTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$PersistHistoryAsyncTask;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;)V

    .line 575
    .local v0, "asyncTask":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$PersistHistoryAsyncTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .locals 4

    .prologue
    .line 743
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryMaxSize:I

    sub-int v1, v2, v3

    .line 744
    .local v1, "pruneCount":I
    if-gtz v1, :cond_1

    .line 754
    :cond_0
    return-void

    .line 747
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 749
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readHistoricalDataIfNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 711
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 712
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 713
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mCanReadHistoricalData:Z

    .line 714
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 715
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->readHistoricalDataImpl()V

    .line 718
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private readHistoricalDataImpl()V
    .locals 18

    .prologue
    .line 963
    const/4 v3, 0x0

    .line 965
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 973
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 974
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v15, "UTF-8"

    invoke-interface {v8, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 976
    const/4 v12, 0x0

    .line 977
    .local v12, "type":I
    :goto_0
    const/4 v15, 0x1

    if-eq v12, v15, :cond_1

    const/4 v15, 0x2

    if-eq v12, v15, :cond_1

    .line 978
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_0

    .line 966
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_0
    move-exception v4

    .line 1031
    :cond_0
    :goto_1
    return-void

    .line 981
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_1
    const-string v15, "historical-records"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 982
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v16, "Share records file does not start with historical-records tag."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_1
    move-exception v14

    .line 1019
    .local v14, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    sget-object v15, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1023
    if-eqz v3, :cond_0

    .line 1025
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1026
    :catch_2
    move-exception v15

    goto :goto_1

    .line 986
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 987
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 990
    :cond_3
    :goto_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    .line 991
    const/4 v15, 0x1

    if-ne v12, v15, :cond_4

    .line 1023
    if-eqz v3, :cond_0

    .line 1025
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1026
    :catch_3
    move-exception v15

    goto :goto_1

    .line 994
    :cond_4
    const/4 v15, 0x3

    if-eq v12, v15, :cond_3

    const/4 v15, 0x4

    if-eq v12, v15, :cond_3

    .line 997
    :try_start_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 998
    .local v7, "nodeName":Ljava/lang/String;
    const-string v15, "historical-record"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 999
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v16, "Share records file not well-formed."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1020
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_4
    move-exception v6

    .line 1021
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_7
    sget-object v15, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1023
    if-eqz v3, :cond_0

    .line 1025
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 1026
    :catch_5
    move-exception v15

    goto/16 :goto_1

    .line 1002
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;>;"
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_5
    const/4 v15, 0x0

    :try_start_9
    const-string v16, "activity"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, "activity":Ljava/lang/String;
    const/4 v15, 0x0

    const-string/jumbo v16, "time"

    .line 1004
    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1005
    .local v10, "time":J
    const/4 v15, 0x0

    const-string/jumbo v16, "weight"

    .line 1006
    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 1007
    .local v13, "weight":F
    new-instance v9, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;

    invoke-direct {v9, v2, v10, v11, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1008
    .local v9, "readRecord":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 1023
    .end local v2    # "activity":Ljava/lang/String;
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "readRecord":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;
    .end local v10    # "time":J
    .end local v12    # "type":I
    .end local v13    # "weight":F
    :catchall_0
    move-exception v15

    if-eqz v3, :cond_6

    .line 1025
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1028
    :cond_6
    :goto_3
    throw v15

    .line 1026
    :catch_6
    move-exception v16

    goto :goto_3
.end method

.method private sortActivitiesIfNeeded()Z
    .locals 4

    .prologue
    .line 672
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivitySorter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    .line 673
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivitySorter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivitySorter;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 675
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 674
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 676
    const/4 v0, 0x1

    .line 678
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 457
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 458
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-nez v8, :cond_0

    .line 459
    monitor-exit v7

    move-object v0, v6

    .line 487
    :goto_0
    return-object v0

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->ensureConsistentState()V

    .line 464
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;

    .line 466
    .local v2, "chosenActivity":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v8, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .local v3, "chosenName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 471
    .local v0, "choiceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 473
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivityChoserModelPolicy:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;

    if-eqz v8, :cond_1

    .line 475
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 476
    .local v1, "choiceIntentCopy":Landroid/content/Intent;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivityChoserModelPolicy:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v8, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;Landroid/content/Intent;)Z

    move-result v4

    .line 478
    .local v4, "handled":Z
    if-eqz v4, :cond_1

    .line 479
    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    .line 483
    .end local v1    # "choiceIntentCopy":Landroid/content/Intent;
    .end local v4    # "handled":Z
    :cond_1
    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v8, v9, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 485
    .local v5, "historicalRecord":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->addHistoricalRecord(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;)Z

    .line 487
    monitor-exit v7

    goto :goto_0

    .line 488
    .end local v0    # "choiceIntent":Landroid/content/Intent;
    .end local v2    # "chosenActivity":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "chosenName":Landroid/content/ComponentName;
    .end local v5    # "historicalRecord":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 410
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->ensureConsistentState()V

    .line 412
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityCount()I
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->ensureConsistentState()V

    .line 397
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "activity"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 424
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 425
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->ensureConsistentState()V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    .line 427
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 428
    .local v1, "activityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 429
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;

    .line 430
    .local v2, "currentActivity":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;
    iget-object v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v4, p1, :cond_0

    .line 431
    monitor-exit v5

    .line 434
    .end local v2    # "currentActivity":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "i":I
    :goto_1
    return v3

    .line 428
    .restart local v2    # "currentActivity":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    .end local v2    # "currentActivity":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;
    :cond_1
    const/4 v3, -0x1

    monitor-exit v5

    goto :goto_1

    .line 435
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;>;"
    .end local v1    # "activityCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 512
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->ensureConsistentState()V

    .line 514
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 518
    :goto_0
    return-object v0

    .line 517
    :cond_0
    monitor-exit v1

    .line 518
    const/4 v0, 0x0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoryMaxSize()I
    .locals 2

    .prologue
    .line 631
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 632
    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryMaxSize:I

    monitor-exit v1

    return v0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistorySize()I
    .locals 2

    .prologue
    .line 642
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->ensureConsistentState()V

    .line 644
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mIntent:Landroid/content/Intent;

    monitor-exit v1

    return-object v0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setActivitySorter(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivitySorter;)V
    .locals 2
    .param p1, "activitySorter"    # Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivitySorter;

    .prologue
    .line 588
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivitySorter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivitySorter;

    if-ne v0, p1, :cond_0

    .line 590
    monitor-exit v1

    .line 597
    :goto_0
    return-void

    .line 592
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivitySorter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivitySorter;

    .line 593
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->notifyChanged()V

    .line 596
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultActivity(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 532
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 533
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->ensureConsistentState()V

    .line 535
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;

    .line 536
    .local v2, "newDefaultActivity":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;

    .line 539
    .local v3, "oldDefaultActivity":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;
    if-eqz v3, :cond_0

    .line 541
    iget v5, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v7, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40a00000    # 5.0f

    add-float v4, v5, v7

    .line 547
    .local v4, "weight":F
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .local v0, "defaultName":Landroid/content/ComponentName;
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v0, v8, v9, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 552
    .local v1, "historicalRecord":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->addHistoricalRecord(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;)Z

    .line 553
    monitor-exit v6

    .line 554
    return-void

    .line 544
    .end local v0    # "defaultName":Landroid/content/ComponentName;
    .end local v1    # "historicalRecord":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$HistoricalRecord;
    .end local v4    # "weight":F
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "weight":F
    goto :goto_0

    .line 553
    .end local v2    # "newDefaultActivity":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "oldDefaultActivity":Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$ActivityResolveInfo;
    .end local v4    # "weight":F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setHistoryMaxSize(I)V
    .locals 2
    .param p1, "historyMaxSize"    # I

    .prologue
    .line 613
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 614
    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryMaxSize:I

    if-ne v0, p1, :cond_0

    .line 615
    monitor-exit v1

    .line 623
    :goto_0
    return-void

    .line 617
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mHistoryMaxSize:I

    .line 618
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 619
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->notifyChanged()V

    .line 622
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 366
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-ne v0, p1, :cond_0

    .line 368
    monitor-exit v1

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mReloadActivities:Z

    .line 372
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->ensureConsistentState()V

    .line 373
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnChooseActivityListener(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;

    .prologue
    .line 497
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel;->mActivityChoserModelPolicy:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserModel$OnChooseActivityListener;

    .line 499
    monitor-exit v1

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
