.class Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;
.super Ljava/lang/Object;
.source "LauncherAppWidgetProviderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupportCellSpans"
.end annotation


# static fields
.field private static final WIDGET_RESIZE:Ljava/lang/String; = "com.sec.android.widgetapp.APPWIDGET_RESIZE"

.field private static final WIDGET_SUPPORT_INFO:Ljava/lang/String; = "com.sec.android.appwidget.widgetinfo"


# instance fields
.field private mMaxXSpan:I

.field private mMaxYSpan:I

.field private mMinXSpan:I

.field private mMinYSpan:I

.field private mResizeMode:I

.field private mSupportSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    const/4 v1, 0x1

    .line 289
    iput-object p1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    .line 294
    iput v2, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    .line 295
    iput v2, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    .line 296
    iput v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    .line 297
    iput v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget v0, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode:I

    iput v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .param p2, "x1"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$1;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;-><init>(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->parseSupportSpans()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->isAvailableSize(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 289
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->updateSpanAndResizeMode(IIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getSupportSpanCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getMinXSpan()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getMinYSpan()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getResizeMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;
    .param p1, "x1"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getNearestWidth(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;
    .param p1, "x1"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getNearestHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private addSupportSpan(II)V
    .locals 4
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I

    .prologue
    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p1, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-direct {p0, p1, p2, v3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->updateSpanAndResizeMode(IIZ)V

    .line 306
    return-void
.end method

.method private getMinXSpan()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    return v0
.end method

.method private getMinYSpan()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    return v0
.end method

.method private getNearestHeight(I)I
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 432
    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getNearestWidth(I)I
    .locals 2
    .param p1, "w"    # I

    .prologue
    .line 428
    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getResizeMode()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    return v0
.end method

.method private getSupportSpanCount()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private getSupportedSpans()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isAvailableSize(II)Z
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    iget-object v3, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 457
    .local v0, "s":[I
    aget v4, v0, v2

    if-ne v4, p1, :cond_0

    aget v4, v0, v1

    if-ne v4, p2, :cond_0

    .line 462
    .end local v0    # "s":[I
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private parseSupportSpans()V
    .locals 26

    .prologue
    .line 339
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 340
    .local v3, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 341
    .local v7, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v10, 0x0

    .line 347
    .local v10, "packageContext":Landroid/content/Context;
    :try_start_0
    iget-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 354
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 355
    .local v9, "localPackageManager":Landroid/content/pm/PackageManager;
    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    .line 356
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const/16 v22, 0x80

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 359
    .local v14, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 360
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 361
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    const-string v22, "com.sec.android.appwidget.widgetinfo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 363
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v12, :cond_0

    .line 366
    :cond_3
    :try_start_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v19

    .local v19, "type":I
    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 375
    .end local v19    # "type":I
    :cond_4
    :goto_1
    const/16 v21, 0x0

    const-string v22, "supportCellSizes"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v12, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 376
    .local v16, "sizeId":I
    if-lez v16, :cond_0

    .line 377
    const/4 v15, 0x0

    .line 379
    .local v15, "reult":[Ljava/lang/String;
    :try_start_2
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v15

    .line 384
    :goto_2
    if-eqz v15, :cond_0

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v4

    .line 386
    .local v4, "defaultSpanX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v5

    .line 387
    .local v5, "defaultSpanY":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->addSupportSpan(II)V

    .line 389
    array-length v0, v15

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    aget-object v11, v15, v21

    .line 390
    .local v11, "parsed":Ljava/lang/String;
    const/16 v23, 0x78

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    .line 391
    .local v20, "x":I
    const/16 v17, 0x0

    .line 392
    .local v17, "spanX":I
    const/16 v18, 0x0

    .line 394
    .local v18, "spanY":I
    const/16 v23, 0x0

    :try_start_3
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 395
    add-int/lit8 v23, v20, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v18

    .line 402
    move/from16 v0, v17

    if-ne v0, v4, :cond_5

    move/from16 v0, v18

    if-eq v0, v5, :cond_6

    .line 403
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->addSupportSpan(II)V

    .line 389
    :cond_6
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 349
    .end local v4    # "defaultSpanX":I
    .end local v5    # "defaultSpanY":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "localPackageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "parsed":Ljava/lang/String;
    .end local v12    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v13    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v14    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "reult":[Ljava/lang/String;
    .end local v16    # "sizeId":I
    .end local v17    # "spanX":I
    .end local v18    # "spanY":I
    .end local v20    # "x":I
    :catch_0
    move-exception v6

    .line 350
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 369
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "localPackageManager":Landroid/content/pm/PackageManager;
    .restart local v12    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v13    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v6

    .line 370
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1

    .line 371
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v6

    .line 372
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 380
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v15    # "reult":[Ljava/lang/String;
    .restart local v16    # "sizeId":I
    :catch_3
    move-exception v6

    .line 381
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v21, "LauncherAWProviderInfo"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Not found the array for supportCellSizes : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 396
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v4    # "defaultSpanX":I
    .restart local v5    # "defaultSpanY":I
    .restart local v11    # "parsed":Ljava/lang/String;
    .restart local v17    # "spanX":I
    .restart local v18    # "spanY":I
    .restart local v20    # "x":I
    :catch_4
    move-exception v6

    .line 397
    .local v6, "e":Ljava/lang/Exception;
    const-string v23, "LauncherAWProviderInfo"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "parsed = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " , x = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 407
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "parsed":Ljava/lang/String;
    .end local v17    # "spanX":I
    .end local v18    # "spanY":I
    .end local v20    # "x":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans$1;-><init>(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)V

    invoke-static/range {v21 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method private updateSpanAndResizeMode(IIZ)V
    .locals 9
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "refresh"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 309
    if-eqz p3, :cond_1

    .line 310
    const/16 v2, 0x3e8

    .line 311
    .local v2, "minXSpan":I
    const/16 v3, 0x3e8

    .line 312
    .local v3, "minYSpan":I
    const/4 v0, 0x1

    .line 313
    .local v0, "maxXSpan":I
    const/4 v1, 0x1

    .line 314
    .local v1, "maxYSpan":I
    iget-object v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 315
    .local v4, "spanXY":[I
    aget v6, v4, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 316
    aget v6, v4, v8

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 317
    aget v6, v4, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 318
    aget v6, v4, v8

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 319
    goto :goto_0

    .line 320
    .end local v4    # "spanXY":[I
    :cond_0
    iput v2, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    .line 321
    iput v3, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    .line 322
    iput v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    .line 323
    iput v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    .line 325
    .end local v0    # "maxXSpan":I
    .end local v1    # "maxYSpan":I
    .end local v2    # "minXSpan":I
    .end local v3    # "minYSpan":I
    :cond_1
    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    .line 326
    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    .line 327
    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    .line 328
    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    .line 330
    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    iget v6, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    if-eq v5, v6, :cond_2

    .line 331
    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    .line 333
    :cond_2
    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    iget v6, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    if-eq v5, v6, :cond_3

    .line 334
    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    .line 336
    :cond_3
    return-void
.end method
