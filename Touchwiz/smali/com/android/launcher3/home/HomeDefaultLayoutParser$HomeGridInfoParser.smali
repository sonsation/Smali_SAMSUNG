.class Lcom/android/launcher3/home/HomeDefaultLayoutParser$HomeGridInfoParser;
.super Ljava/lang/Object;
.source "HomeDefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeDefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeGridInfoParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$HomeGridInfoParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;Lcom/android/launcher3/home/HomeDefaultLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    .param p2, "x1"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser$1;

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$HomeGridInfoParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    const-string v6, "default"

    invoke-static {p1, v6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "defaultGrid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 615
    :try_start_0
    const-string v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, "gridXY":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 617
    .local v2, "gridX":I
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 618
    .local v4, "gridY":I
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 619
    .local v5, "newGrid":[I
    iget-object v6, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$HomeGridInfoParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v6}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$3300(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v2, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->findNearestGridSize(Landroid/content/Context;[III)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 620
    iget-object v6, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$HomeGridInfoParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$3400(Lcom/android/launcher3/home/HomeDefaultLayoutParser;II)V

    .line 621
    const-string v6, "HomeDefaultLayoutParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "write default homegrid to preference : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v2    # "gridX":I
    .end local v3    # "gridXY":[Ljava/lang/String;
    .end local v4    # "gridY":I
    .end local v5    # "newGrid":[I
    :cond_0
    :goto_0
    const-wide/16 v6, -0x1

    return-wide v6

    .line 624
    :catch_0
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "HomeDefaultLayoutParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "write default homegrid exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
