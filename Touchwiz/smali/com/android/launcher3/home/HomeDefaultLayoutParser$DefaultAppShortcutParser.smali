.class Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;
.source "HomeDefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeDefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultAppShortcutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x64

    .line 367
    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "container"

    iget-object v6, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v6}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$300(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "screen"

    const-string v6, "screen"

    invoke-static {p1, v6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v4, "x"

    invoke-static {p1, v4}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "cellX":Ljava/lang/String;
    const-string v4, "y"

    invoke-static {p1, v4}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "cellY":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 373
    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$400(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "cellX"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$500(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "cellY"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    .line 378
    .local v2, "result":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 379
    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v4, v0, v1, v8, v8}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$600(Lcom/android/launcher3/home/HomeDefaultLayoutParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_1
    return-wide v2
.end method
