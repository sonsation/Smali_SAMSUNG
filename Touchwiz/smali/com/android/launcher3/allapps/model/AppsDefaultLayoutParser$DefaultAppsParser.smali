.class public Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;
.source "AppsDefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultAppsParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->access$100(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)J

    move-result-wide v0

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->access$200(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "rank"

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    iget v2, v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->access$300(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "screen"

    const-string v2, "screen"

    invoke-static {p1, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->access$400(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "container"

    const/16 v2, -0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
