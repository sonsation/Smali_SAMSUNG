.class Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;
.super Ljava/lang/Object;
.source "AppsDefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsGridInfoParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    .param p2, "x1"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$1;

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const-string v5, "default"

    invoke-static {p1, v5}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "defaultGrid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 302
    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "gridXY":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 304
    .local v1, "gridX":I
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 305
    .local v3, "gridY":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-static {v5}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->access$1200(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v3}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsGridLayoutPreference(Landroid/content/Context;II)V

    .line 306
    const-string v5, "AppsDefaultLayoutParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write default appsgrid to preference from omc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v1    # "gridX":I
    .end local v2    # "gridXY":[Ljava/lang/String;
    .end local v3    # "gridY":I
    :cond_0
    const-string v5, "supportSet"

    invoke-static {p1, v5}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "supportSet":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 310
    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-static {v5}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->access$1300(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsSupportedGridSet(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    const-string v5, "AppsDefaultLayoutParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write appsgridset to preference from omc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    const-wide/16 v6, -0x1

    return-wide v6
.end method
