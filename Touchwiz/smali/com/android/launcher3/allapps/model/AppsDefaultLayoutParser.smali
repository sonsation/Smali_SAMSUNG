.class public Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser;
.source "AppsDefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;,
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;,
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppAutoInstallParser;,
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;
    }
.end annotation


# static fields
.field static final CSC_PATH:Ljava/lang/String; = "/system/csc"

.field private static final OMC_ETC_PATH:Ljava/lang/String; = "/etc"

.field private static final TAG:Ljava/lang/String; = "AppsDefaultLayoutParser"

.field static final XML_APPORDER:Ljava/lang/String; = "/default_application_order.xml"

.field static final XML_APPORDER_GUEST:Ljava/lang/String; = "/default_application_order_guest.xml"

.field static final XML_APPORDER_KNOX:Ljava/lang/String; = "/default_application_order_knox.xml"


# instance fields
.field private OMC_PATH:Ljava/lang/String;

.field private mAppOrderPath:Ljava/lang/String;

.field private mAppOrderPathGuest:Ljava/lang/String;

.field private mAppOrderPathKnox:Ljava/lang/String;

.field private mAppsParseContainer:J

.field private mIsCSC:Z

.field private mIsGuest:Z

.field private mIsKnoxMode:Z

.field protected mRank:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;
    .param p4, "sourceRes"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 70
    const-string v6, "appOrder"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 55
    iput-object v8, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    .line 56
    iput-object v8, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    .line 57
    iput-object v8, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    .line 59
    iput-boolean v7, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z

    .line 60
    iput-boolean v7, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    .line 61
    iput-boolean v7, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    .line 63
    const-wide/16 v0, -0x66

    iput-wide v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    .line 72
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOmcPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_application_order.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_application_order.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_application_order_guest.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_application_order_guest.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_application_order_knox.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_application_order_knox.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;
    .param p4, "sourceRes"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I
    .param p6, "rootTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 55
    iput-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    .line 59
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    .line 63
    const-wide/16 v0, -0x66

    iput-wide v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    .param p1, "x1"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method


# virtual methods
.method protected defaultAppsParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)V
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p5, "container"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    .local p3, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .local p4, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 186
    .local v9, "startDepth":I
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    .line 189
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v9, :cond_2

    .line 190
    :cond_1
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 244
    :cond_2
    return-void

    .line 194
    :cond_3
    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 200
    const-string v12, "appsGridInfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 201
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    .line 202
    .local v10, "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    if-eqz v10, :cond_0

    .line 203
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v10, v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    goto :goto_0

    .line 208
    .end local v10    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    :cond_4
    const-string v12, "screen"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 209
    .local v8, "screenStr":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 213
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 215
    .local v6, "screenId":J
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    .line 216
    .restart local v10    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    if-nez v10, :cond_5

    .line 217
    const-string v12, "AppsDefaultLayoutParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring unknown element tag: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_5
    const-wide/16 v12, -0x66

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    .line 222
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v10, v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    .line 223
    .local v2, "newElementId":J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-ltz v12, :cond_0

    .line 225
    const/16 v12, -0x66

    move/from16 v0, p5

    if-ne v0, v12, :cond_6

    if-eqz p4, :cond_6

    .line 226
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 227
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    .line 230
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-lez v12, :cond_0

    .line 233
    const-string v12, "reservedFolder"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "reservedFolder":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mContext:Landroid/content/Context;

    .line 236
    invoke-static {v12}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v12

    const-wide/16 v14, -0x66

    invoke-virtual {v12, v14, v15}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v4

    .line 237
    .local v4, "ppPref":Lcom/android/launcher3/common/customer/PostPositionSharedPref;
    if-eqz v4, :cond_0

    .line 238
    const/4 v12, 0x1

    invoke-virtual {v4, v5, v2, v3, v12}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    goto/16 :goto_0
.end method

.method protected getFolderElementsMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/common/model/DefaultLayoutParser$AutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AutoInstallParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-object v0
.end method

.method protected getHiddenApps()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v8, "hiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v6, 0x0

    .line 326
    .local v6, "fileReader":Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 327
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 329
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v5, "fileCheck":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_4

    .line 332
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .local v7, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 334
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 335
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v7

    .line 340
    .end local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRootTag:Ljava/lang/String;

    invoke-static {v10, v13}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 342
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 345
    .local v11, "startDepth":I
    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-le v13, v11, :cond_2

    .line 346
    :cond_1
    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 371
    :cond_2
    if-eqz v6, :cond_3

    .line 373
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 380
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "fileCheck":Ljava/io/File;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "startDepth":I
    .end local v12    # "type":I
    :cond_3
    :goto_2
    return-object v8

    .line 337
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "fileCheck":Ljava/io/File;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    const v14, 0x7f080002

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0

    .line 350
    .restart local v11    # "startDepth":I
    .restart local v12    # "type":I
    :cond_5
    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 354
    const-string v13, "favorite"

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 358
    const-string v13, "hidden"

    invoke-static {v10, v13}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 359
    const-string v13, "packageName"

    invoke-static {v10, v13}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 360
    .local v9, "packageName":Ljava/lang/String;
    const-string v13, "className"

    invoke-static {v10, v13}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "className":Ljava/lang/String;
    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v9, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 364
    .end local v2    # "className":Ljava/lang/String;
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "fileCheck":Ljava/io/File;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "startDepth":I
    .end local v12    # "type":I
    :catch_0
    move-exception v3

    .line 365
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_5
    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    if-eqz v6, :cond_3

    .line 373
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 374
    :catch_1
    move-exception v3

    .line 375
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 374
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "fileCheck":Ljava/io/File;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "startDepth":I
    .restart local v12    # "type":I
    :catch_2
    move-exception v3

    .line 375
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 366
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "fileCheck":Ljava/io/File;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "startDepth":I
    .end local v12    # "type":I
    :catch_3
    move-exception v3

    .line 367
    .local v3, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 371
    if-eqz v6, :cond_3

    .line 373
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 374
    :catch_4
    move-exception v3

    .line 375
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 368
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 369
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_5
    :try_start_9
    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 371
    if-eqz v6, :cond_3

    .line 373
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    .line 374
    :catch_6
    move-exception v3

    .line 375
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 371
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_6
    if-eqz v6, :cond_6

    .line 373
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 376
    :cond_6
    :goto_7
    throw v13

    .line 374
    :catch_7
    move-exception v3

    .line 375
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v14, "AppsDefaultLayoutParser"

    const-string v15, "Got exception parsing appOrder."

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 371
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "fileCheck":Ljava/io/File;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 368
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v6, v7

    .end local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 366
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v6, v7

    .end local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 364
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    goto :goto_3
.end method

.method protected getLayoutElementsMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "folder"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppAutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppAutoInstallParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "appsGridInfo"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object v0
.end method

.method protected parseLayout(Ljava/util/ArrayList;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v12, 0x0

    .line 112
    const/4 v9, 0x0

    .line 114
    .local v9, "fileReader":Ljava/io/FileReader;
    invoke-static {}, Lcom/android/launcher3/Utilities;->isGuest()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    .line 115
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    .line 118
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 119
    .local v7, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 120
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    if-eqz v0, :cond_2

    .line 121
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v8, "fileCheck":Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v12

    if-lez v0, :cond_6

    .line 136
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .local v10, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 138
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 157
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRootTag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getLayoutElementsMap()Ljava/util/HashMap;

    move-result-object v3

    .line 161
    .local v3, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v2, "favorites"

    const/16 v5, -0x66

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->defaultAppsParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    if-eqz v9, :cond_1

    .line 172
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 179
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "fileCheck":Ljava/io/File;
    :cond_1
    :goto_2
    iget v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    return v0

    .line 122
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_2
    :try_start_4
    iget v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mLayoutId:I

    if-eqz v0, :cond_3

    .line 124
    const/4 v8, 0x0

    .restart local v8    # "fileCheck":Ljava/io/File;
    goto :goto_0

    .line 125
    .end local v8    # "fileCheck":Ljava/io/File;
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    if-eqz v0, :cond_5

    .line 126
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v8    # "fileCheck":Ljava/io/File;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v12

    if-gtz v0, :cond_0

    .line 129
    :cond_4
    new-instance v8, Ljava/io/File;

    .end local v8    # "fileCheck":Ljava/io/File;
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v8    # "fileCheck":Ljava/io/File;
    goto :goto_0

    .line 132
    .end local v8    # "fileCheck":Ljava/io/File;
    :cond_5
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v8    # "fileCheck":Ljava/io/File;
    goto :goto_0

    .line 143
    :cond_6
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    if-eqz v0, :cond_7

    .line 144
    const v11, 0x7f080004

    .line 154
    .local v11, "resId":I
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_1

    .line 145
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "resId":I
    :cond_7
    iget v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mLayoutId:I

    if-eqz v0, :cond_8

    .line 147
    iget v11, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mLayoutId:I

    .restart local v11    # "resId":I
    goto :goto_3

    .line 148
    .end local v11    # "resId":I
    :cond_8
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_9

    .line 149
    const v11, 0x7f080003

    .restart local v11    # "resId":I
    goto :goto_3

    .line 151
    .end local v11    # "resId":I
    :cond_9
    const v11, 0x7f080002

    .restart local v11    # "resId":I
    goto :goto_3

    .line 173
    .end local v11    # "resId":I
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    :catch_0
    move-exception v6

    .line 174
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "AppsDefaultLayoutParser"

    const-string v2, "Got exception parsing appOrder."

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 163
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "fileCheck":Ljava/io/File;
    :catch_1
    move-exception v6

    .line 164
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_5
    const-string v0, "AppsDefaultLayoutParser"

    const-string v2, "Got exception parsing appOrder."

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    if-eqz v9, :cond_1

    .line 172
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 173
    :catch_2
    move-exception v6

    .line 174
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "AppsDefaultLayoutParser"

    const-string v2, "Got exception parsing appOrder."

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 165
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 166
    .local v6, "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v0, "AppsDefaultLayoutParser"

    const-string v2, "Got exception parsing appOrder."

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    if-eqz v9, :cond_1

    .line 172
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    .line 173
    :catch_4
    move-exception v6

    .line 174
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "AppsDefaultLayoutParser"

    const-string v2, "Got exception parsing appOrder."

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 167
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 168
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_6
    :try_start_9
    const-string v0, "AppsDefaultLayoutParser"

    const-string v2, "Got exception parsing appOrder."

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 170
    if-eqz v9, :cond_1

    .line 172
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    .line 173
    :catch_6
    move-exception v6

    .line 174
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "AppsDefaultLayoutParser"

    const-string v2, "Got exception parsing appOrder."

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 170
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v9, :cond_a

    .line 172
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 175
    :cond_a
    :goto_8
    throw v0

    .line 173
    :catch_7
    move-exception v6

    .line 174
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 170
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "fileCheck":Ljava/io/File;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_7

    .line 167
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 165
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 163
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catch_a
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_4
.end method
