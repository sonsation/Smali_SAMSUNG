.class Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;
.super Ljava/lang/Object;
.source "HomeRestoreLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;
    .param p2, "x1"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V

    return-void
.end method

.method private addTag(Ljava/lang/String;)V
    .locals 6
    .param p1, "container"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 348
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 369
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "Rows"

    new-instance v3, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RowsParser;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RowsParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "Columns"

    new-instance v3, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {v3, v4, v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Z)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "PageCount"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    const-string v4, "home"

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ScreenIndex"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ScreenIndexParser;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    const-string v4, "home"

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ScreenIndexParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "home"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "hotseat"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :goto_1
    return-void

    .line 348
    :sswitch_0
    const-string v3, "home_easy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "homeOnly"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "PageCount_easy"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    const-string v4, "home_easy"

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ScreenIndex_easy"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ScreenIndexParser;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    const-string v4, "home_easy"

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ScreenIndexParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "home_easy"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "hotseat_easy"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 358
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Rows_homeOnly"

    new-instance v3, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RowsParser;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RowsParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Columns_homeOnly"

    new-instance v3, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {v3, v4, v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Z)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "PageCount_homeOnly"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    const-string v4, "homeOnly"

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ScreenIndex_homeOnly"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ScreenIndexParser;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    const-string v4, "homeOnly"

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ScreenIndexParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "homeOnly"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "hotseat_homeOnly"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "screenContent"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$HomeScreenContentParser;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {v2, v3, v5}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$HomeScreenContentParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 348
    :sswitch_data_0
    .sparse-switch
        -0x1cfcfed5 -> :sswitch_1
        0x7e3a5b62 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    const/4 v8, 0x0

    .line 315
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 316
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "categoryText":Ljava/lang/String;
    const-string v4, "Launcher.HomeRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restore category : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v0, "category":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 320
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 322
    aget-object v4, v3, v2

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v2    # "i":I
    .end local v3    # "items":[Ljava/lang/String;
    :cond_0
    const-string v4, "home"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    const-string v4, "home"

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->addTag(Ljava/lang/String;)V

    .line 330
    :cond_1
    const-string v4, "zeroPage"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 331
    iget-object v4, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "zeroPage"

    new-instance v6, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v4, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "zeroPageContents"

    new-instance v6, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageContentsParser;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageContentsParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "homeOnly"

    .line 336
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 337
    const-string v4, "homeOnly"

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->addTag(Ljava/lang/String;)V

    .line 340
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 341
    const-string v4, "home_easy"

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;->addTag(Ljava/lang/String;)V

    .line 344
    .end local v0    # "category":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "categoryText":Ljava/lang/String;
    :cond_4
    const-wide/16 v4, 0x0

    return-wide v4
.end method
